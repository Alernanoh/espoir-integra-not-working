import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_direccion_info_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/config/database/ubicacion_isar.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteDireccionState {
  final List<String> provincias;
  final String provinciaName;
  final int provinciaCode;
  final List<String> cantones;
  final String cantonName;
  final int cantonCode;
  final List<String> parroquias;
  final String parroquiasName;
  final int parroquiasCode;
  final String callePrincipal;
  final String numeroCasa;
  final String calleSecundaria;
  final String sector;
  final String referencia;
  final String latitud;
  final String longitud;
  final String errorMessage;
  final bool dataGuardado;

  ActualizarClienteDireccionState({
    this.provincias = const [],
    this.provinciaName = '',
    this.provinciaCode = 0,
    this.cantones = const [],
    this.cantonName = '',
    this.cantonCode = 0,
    this.parroquias = const [],
    this.parroquiasName = '',
    this.parroquiasCode = 0,
    this.callePrincipal = '',
    this.numeroCasa = '',
    this.calleSecundaria = '',
    this.sector = '',
    this.referencia = '',
    this.latitud = '',
    this.longitud = '',
    this.errorMessage = '',
    this.dataGuardado = false,
  });

  ActualizarClienteDireccionState copyWith({
    List<String>? provincias,
    String? provinciaName,
    int? provinciaCode,
    List<String>? cantones,
    String? cantonName,
    int? cantonCode,
    List<String>? parroquias,
    String? parroquiasName,
    int? parroquiasCode,
    String? callePrincipal,
    String? numeroCasa,
    String? calleSecundaria,
    String? sector,
    String? referencia,
    String? latitud,
    String? longitud,
    String? errorMessage,
    bool? dataGuardado,
  }) =>
      ActualizarClienteDireccionState(
        provincias: provincias ?? this.provincias,
        provinciaName: provinciaName ?? this.provinciaName,
        provinciaCode: provinciaCode ?? this.provinciaCode,
        cantones: cantones ?? this.cantones,
        cantonName: cantonName ?? this.cantonName,
        cantonCode: cantonCode ?? this.cantonCode,
        parroquias: parroquias ?? this.parroquias,
        parroquiasName: parroquiasName ?? this.parroquiasName,
        parroquiasCode: parroquiasCode ?? this.parroquiasCode,
        callePrincipal: callePrincipal ?? this.callePrincipal,
        numeroCasa: numeroCasa ?? this.numeroCasa,
        calleSecundaria: calleSecundaria ?? this.calleSecundaria,
        sector: sector ?? this.sector,
        referencia: referencia ?? this.referencia,
        latitud: latitud ?? this.latitud,
        longitud: longitud ?? this.longitud,
        errorMessage: errorMessage ?? this.errorMessage,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteDireccionNotifier extends StateNotifier<ActualizarClienteDireccionState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteDireccionNotifier() : super(ActualizarClienteDireccionState());

  onChangeData(ModelActualizarClienteDireccionData data) async {
    final dataUbicacion = await UbicacionIsar().getAllUbicacion();
    List<String> nameProvincias = [];
    for (var item in dataUbicacion.first.provincias) {
      nameProvincias.add(item.prvNombre ?? '');
    }
    List<String> nameCantones = [];
    for (var item in dataUbicacion.first.cantones) {
      if (item.cntProvincia == data.provincia) nameCantones.add(item.cntNombre ?? '');
    }
    List<String> nameParroquias = [];
    for (var item in dataUbicacion.first.parroquias) {
      if (item.parCanton == data.canton) nameParroquias.add(item.parNombre ?? '');
    }

    state = state.copyWith(
      provincias: nameProvincias,
      provinciaName: data.provinciaNombre ?? '',
      provinciaCode: data.provincia ?? 0,
      cantones: nameCantones,
      cantonName: data.cantonNombre ?? '',
      cantonCode: data.canton ?? 0,
      parroquias: nameParroquias,
      parroquiasName: data.parroquiaNombre ?? '',
      parroquiasCode: data.parroquia ?? 0,
      callePrincipal: data.calle ?? '',
      numeroCasa: data.numero ?? '',
      calleSecundaria: data.interseccion ?? '',
      sector: data.sector ?? '',
      referencia: data.referencia ?? '',
      latitud: data.coordGoogleY ?? '',
      longitud: data.coordGoogleX ?? '',
      errorMessage: '',
      dataGuardado: false,
    );
  }

  onProvinciaChange(String value, int code) async {
    final dataUbicacion = await UbicacionIsar().getAllUbicacion();
    List<String> nameCantones = [];
    for (var item in dataUbicacion.first.cantones) {
      if (item.cntProvincia == code) nameCantones.add(item.cntNombre ?? '');
    }

    state = state.copyWith(
      provinciaName: value,
      provinciaCode: code,
      cantones: nameCantones,
      cantonName: '',
      cantonCode: 0,
      parroquias: [],
      parroquiasName: '',
      parroquiasCode: 0,
      errorMessage: '',
      dataGuardado: false,
    );
  }

  onCantonesChange(String value, int code) async {
    final dataUbicacion = await UbicacionIsar().getAllUbicacion();
    List<String> nameParroquias = [];
    for (var item in dataUbicacion.first.parroquias) {
      if (item.parCanton == code) nameParroquias.add(item.parNombre ?? '');
    }

    state = state.copyWith(
      cantonName: value,
      cantonCode: code,
      parroquias: nameParroquias,
      parroquiasName: '',
      parroquiasCode: 0,
      errorMessage: '',
      dataGuardado: false,
    );
  }

  onParroquiasChange(String value, int code) async {
    state = state.copyWith(
      parroquiasName: value,
      parroquiasCode: code,
      errorMessage: '',
      dataGuardado: false,
    );
  }

  onErrorMessage(String value) {
    state = state.copyWith(errorMessage: value);
  }

  onChangeInputText(String value, String opcion) {
    if (opcion == 'Calle principal') {
      state = state.copyWith(callePrincipal: value);
    } else if (opcion == 'Número de casa') {
      state = state.copyWith(numeroCasa: value);
    } else if (opcion == 'Calle secundaria') {
      state = state.copyWith(calleSecundaria: value);
    } else if (opcion == 'Sector') {
      state = state.copyWith(sector: value);
    } else if (opcion == 'Referencia') {
      state = state.copyWith(referencia: value);
    }
    state = state.copyWith(
      errorMessage: '',
      dataGuardado: false,
    );
  }

  onChangeCoordenadas(String valLatitud, String valLongitud) {
    state = state.copyWith(
      latitud: valLatitud,
      longitud: valLongitud,
      errorMessage: '',
      dataGuardado: false,
    );
  }

  guardarDatos(String idCliente, String tipo) async {
    if (state.provinciaCode != 0 &&
        state.cantonCode != 0 &&
        state.parroquiasCode != 0 &&
        state.callePrincipal.isNotEmpty &&
        state.numeroCasa.isNotEmpty &&
        state.calleSecundaria.isNotEmpty &&
        state.sector.isNotEmpty &&
        state.referencia.isNotEmpty &&
        state.latitud.isNotEmpty &&
        state.longitud.isNotEmpty) {
      final idUser = await storage.read(key: 'idUser');
      final resp = await WebServer().conectToServerExecute({
        'codigo': '0129',
        'AI_CLIENTE': idCliente,
        'AS_TIPO_DIRECCION': tipo,
        'AS_CALLE': state.callePrincipal,
        'AS_NUMERO': state.numeroCasa,
        'AS_INTERSECCION': state.calleSecundaria,
        'AS_SECTOR': state.sector,
        'AS_REFERENCIA': state.referencia,
        'AI_PROVINCIA': state.provinciaCode,
        'AI_CANTON': state.cantonCode,
        'AI_PARROQUIA': state.parroquiasCode,
        'AS_COORD_GOOGLE_X': state.longitud,
        'AS_COORD_GOOGLE_Y': state.latitud,
        'AS_USUARIO': idUser,
      });
      final jsonBody = ModelActualizarClienteGuardar.fromJson(resp);
      if (jsonBody.success!) {
        if (jsonBody.data!.first.resultado == 1) {
          state = state.copyWith(
            dataGuardado: true,
            errorMessage: jsonBody.data?.first.mensaje,
          );
        } else {
          state = state.copyWith(
            dataGuardado: false,
            errorMessage: jsonBody.data?.first.mensaje,
          );
        }
      } else {
        state = state.copyWith(
          dataGuardado: false,
          errorMessage: jsonBody.message,
        );
      }
    } else {
      state = state.copyWith(errorMessage: 'Ingrese todos los campos');
    }
  }
}

final actualizarClienteDireccionProvider =
    StateNotifierProvider<ActualizarClienteDireccionNotifier, ActualizarClienteDireccionState>(
        (ref) => ActualizarClienteDireccionNotifier());
