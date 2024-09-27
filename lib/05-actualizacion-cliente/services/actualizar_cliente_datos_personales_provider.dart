import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_datos_personales_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_estados_civiles_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:intl/intl.dart';

class ActualizarClienteDatosPersonalesState {
  final DateTime fechaNacimiento;
  final List<String> estadosCiviles;
  final String estadoCivilName;
  final String estadoCivilCode;
  final String errorMessage;
  final bool isSaving;
  final bool dataGuardado;

  ActualizarClienteDatosPersonalesState({
    DateTime? fechaNacimiento,
    this.estadosCiviles = const [],
    this.estadoCivilName = '',
    this.estadoCivilCode = '',
    this.errorMessage = '',
    this.isSaving = false,
    this.dataGuardado = false,
  }) : fechaNacimiento = fechaNacimiento ?? DateTime.now();

  ActualizarClienteDatosPersonalesState copyWith({
    DateTime? fechaNacimiento,
    List<String>? estadosCiviles,
    String? estadoCivilName,
    String? estadoCivilCode,
    String? errorMessage,
    bool? isSaving,
    bool? dataGuardado,
  }) =>
      ActualizarClienteDatosPersonalesState(
        fechaNacimiento: fechaNacimiento ?? this.fechaNacimiento,
        estadosCiviles: estadosCiviles ?? this.estadosCiviles,
        estadoCivilName: estadoCivilName ?? this.estadoCivilName,
        estadoCivilCode: estadoCivilCode ?? this.estadoCivilCode,
        errorMessage: errorMessage ?? this.errorMessage,
        isSaving: isSaving ?? this.isSaving,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteDatosPersonalesNotifier extends StateNotifier<ActualizarClienteDatosPersonalesState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteDatosPersonalesNotifier() : super(ActualizarClienteDatosPersonalesState());

  onChangeData(
    List<ModelActualizarClienteEstadosCivilesData> estadosCiviles,
    ModelActualizarClienteDatosPersonalesData data,
  ) async {
    List<String> nameEstadosCiviles = [];
    for (var item in estadosCiviles) {
      nameEstadosCiviles.add(item.ecNombre ?? '');
    }

    state = state.copyWith(
      fechaNacimiento: data.fechaNacimiento,
      estadosCiviles: nameEstadosCiviles,
      estadoCivilName: data.estadoCivilDescrip,
      estadoCivilCode: data.estadoCivil,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  onChangeFechaNacimiento(DateTime value) {
    state = state.copyWith(fechaNacimiento: value);
  }

  onChangeEstadoCivil(String value, List<ModelActualizarClienteEstadosCivilesData> estadosCiviles) {
    for (var item in estadosCiviles) {
      if (value == item.ecNombre) {
        state = state.copyWith(
          estadoCivilCode: item.ecEstadoCivil,
          estadoCivilName: value,
          errorMessage: '',
          isSaving: false,
          dataGuardado: false,
        );
      }
    }
  }

  saveData(String idCliente) async {
    state = state.copyWith(isSaving: true);
    DateTime fecha = DateTime.now();
    final idUser = await storage.read(key: 'idUser');
    if (fecha.year - state.fechaNacimiento.year >= 18) {
      if (state.estadoCivilCode.isNotEmpty) {
        final resp = await WebServer().conectToServerExecute({
          'codigo': '0127',
          'AI_ID_CLIENTE': idCliente,
          'AS_ESTADO_CIVIL': state.estadoCivilCode,
          'AF_FECHA_NACIMIENTO': DateFormat('MM/dd/yyyy').format(state.fechaNacimiento),
          'AS_USUARIO': idUser,
        });
        final jsonBody = ModelActualizarClienteGuardar.fromJson(resp);
        if (jsonBody.success!) {
          if (jsonBody.data?.first.resultado == 1) {
            state = state.copyWith(
              dataGuardado: true,
              errorMessage: jsonBody.data?.first.mensaje,
              isSaving: false,
            );
          } else {
            state = state.copyWith(
              dataGuardado: false,
              errorMessage: jsonBody.data?.first.mensaje,
              isSaving: false,
            );
          }
        } else {
          state = state.copyWith(
            dataGuardado: false,
            errorMessage: jsonBody.message,
            isSaving: false,
          );
        }
      } else {
        state = state.copyWith(errorMessage: 'Escoja un estado civil', isSaving: true);
      }
    } else {
      state = state.copyWith(errorMessage: 'Tiene que ser mayor de 18 años', isSaving: true);
    }
  }
}

final actualizarClienteDatosPersonalesProvider =
    StateNotifierProvider<ActualizarClienteDatosPersonalesNotifier, ActualizarClienteDatosPersonalesState>(
        (ref) => ActualizarClienteDatosPersonalesNotifier());
