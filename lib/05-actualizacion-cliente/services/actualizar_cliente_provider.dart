import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:integra_espoir/05-actualizacion-cliente/inputs/input_act_cli_cedula.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_actividad_economica_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_cuenta_recuperacion_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_entidades_financieras_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_datos_personales_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_datos_telefonicos_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_direccion_info_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_estado_financiero_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_estados_civiles_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_head_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_tipo_cuenta_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteState {
  final ActualizarClienteCedulaInput cedula;
  final String idCliente;
  final bool isValidForm;
  final String errorMessage;
  final bool isSearch;
  final List<bool> completeData;
  final bool getUbicacion;
  final List<ModelActualizarClienteHeadData> head;
  final List<ModelActualizarClienteDireccionData> domicilioInfo;
  final List<ModelActualizarClienteDireccionData> empleoInfo;
  final List<ModelActualizarClienteDatosPersonalesData> datosPersonales;
  final List<ModelActualizarClienteEstadosCivilesData> estadosCiviles;
  final List<ModelActualizarClienteDatosTelefonicosData> datosTelefonicos;
  final List<ModelActualizarClienteEstadoFinancieroData> estadoFinanciero;
  final List<ModelActualizarClienteEntidadesFinancierasData> entidadesFinancieras;
  final List<ModelActualizarClienteTipoCuentaData> tipoCuenta;
  final List<ModelActualizarClienteCuentarecuperacionData> cuentaRecuperacion;
  final List<ModelActualizarClienteActividadEconomicaData> actividadEconomica;

  ActualizarClienteState({
    this.cedula = const ActualizarClienteCedulaInput.pure(),
    this.idCliente = '',
    this.isValidForm = false,
    this.errorMessage = '',
    this.isSearch = false,
    this.completeData = const [false, false, false, false, false, false, false, false, false, false, false],
    this.getUbicacion = false,
    this.head = const [],
    this.domicilioInfo = const [],
    this.empleoInfo = const [],
    this.datosPersonales = const [],
    this.estadosCiviles = const [],
    this.datosTelefonicos = const [],
    this.estadoFinanciero = const [],
    this.entidadesFinancieras = const [],
    this.tipoCuenta = const [],
    this.cuentaRecuperacion = const [],
    this.actividadEconomica = const [],
  });

  ActualizarClienteState copyWith({
    ActualizarClienteCedulaInput? cedula,
    String? idCliente,
    bool? isValidForm,
    String? errorMessage,
    bool? isSearch,
    List<bool>? completeData,
    List<ModelActualizarClienteHeadData>? head,
    List<ModelActualizarClienteDireccionData>? domicilioInfo,
    List<ModelActualizarClienteDireccionData>? empleoInfo,
    List<ModelActualizarClienteDatosPersonalesData>? datosPersonales,
    List<ModelActualizarClienteEstadosCivilesData>? estadosCiviles,
    List<ModelActualizarClienteDatosTelefonicosData>? datosTelefonicos,
    List<ModelActualizarClienteEstadoFinancieroData>? estadoFinanciero,
    List<ModelActualizarClienteEntidadesFinancierasData>? entidadesFinancieras,
    List<ModelActualizarClienteTipoCuentaData>? tipoCuenta,
    List<ModelActualizarClienteCuentarecuperacionData>? cuentaRecuperacion,
    List<ModelActualizarClienteActividadEconomicaData>? actividadEconomica,
  }) =>
      ActualizarClienteState(
        cedula: cedula ?? this.cedula,
        idCliente: idCliente ?? this.idCliente,
        isValidForm: isValidForm ?? this.isValidForm,
        errorMessage: errorMessage ?? this.errorMessage,
        isSearch: isSearch ?? this.isSearch,
        completeData: completeData ?? this.completeData,
        head: head ?? this.head,
        domicilioInfo: domicilioInfo ?? this.domicilioInfo,
        empleoInfo: empleoInfo ?? this.empleoInfo,
        datosPersonales: datosPersonales ?? this.datosPersonales,
        estadosCiviles: estadosCiviles ?? this.estadosCiviles,
        datosTelefonicos: datosTelefonicos ?? this.datosTelefonicos,
        estadoFinanciero: estadoFinanciero ?? this.estadoFinanciero,
        entidadesFinancieras: entidadesFinancieras ?? this.entidadesFinancieras,
        tipoCuenta: tipoCuenta ?? this.tipoCuenta,
        cuentaRecuperacion: cuentaRecuperacion ?? this.cuentaRecuperacion,
        actividadEconomica: actividadEconomica ?? this.actividadEconomica,
      );
}

class ActualizarClienteNotifier extends StateNotifier<ActualizarClienteState> {
  ActualizarClienteNotifier() : super(ActualizarClienteState());

  onCedulaChange(String value) {
    final newCedula = ActualizarClienteCedulaInput.dirty(value);
    state = state.copyWith(
      cedula: newCedula,
      isValidForm: Formz.validate([newCedula]),
      errorMessage: '',
      isSearch: false,
      completeData: List<bool>.filled(11, false),
    );
  }

  _tocarCadaInput() {
    final cedula = ActualizarClienteCedulaInput.dirty(state.cedula.value);
    state = state.copyWith(
      cedula: cedula,
      isValidForm: Formz.validate([cedula]),
      errorMessage: cedula.errorMessage,
      isSearch: true,
    );
  }

  _getHead(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0095', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteHead.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        head: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        head: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getDomicilio(int posicion) async {
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0098',
      'AS_IDENTIFICACION': state.cedula.value,
      'AS_TIPO_DIRECCION': 'I',
    });
    final jsonBody = ModelActualizarClienteDireccion.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        domicilioInfo: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        domicilioInfo: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getEmpleo(int posicion) async {
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0098',
      'AS_IDENTIFICACION': state.cedula.value,
      'AS_TIPO_DIRECCION': 'J',
    });
    final jsonBody = ModelActualizarClienteDireccion.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        empleoInfo: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        empleoInfo: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getDatosPersonales(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0117', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteDatosPersonales.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        datosPersonales: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        datosPersonales: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getEstadosCiviles(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0126'});
    final jsonBody = ModelActualizarClienteEstadosCiviles.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        estadosCiviles: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        estadosCiviles: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getDatosTelefonicos(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0118', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteDatosTelefonicos.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        datosTelefonicos: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        datosTelefonicos: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getEstadosFinancieros(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0120', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteEstadoFinanciero.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        estadoFinanciero: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        estadoFinanciero: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getEntidadesFinancieras(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0121'});
    final jsonBody = ModelActualizarClienteEntidadesFinancieras.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        entidadesFinancieras: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        entidadesFinancieras: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getTipoCuenta(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0122'});
    final jsonBody = ModelActualizarClienteTipoCuenta.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        tipoCuenta: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        tipoCuenta: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getCuentaRecuperacion(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0123', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteCuentarecuperacion.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        cuentaRecuperacion: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        cuentaRecuperacion: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  getActividadEconomica(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0125', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelActualizarClienteActividadEconomica.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        actividadEconomica: jsonBody.data,
        completeData: boolsComplete,
        errorMessage: '',
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        actividadEconomica: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  checkCompleteData() {
    bool isOK = true;
    for (var item in state.completeData) {
      if (!item) isOK = false;
    }
    state = state.copyWith(isSearch: false);
    return isOK;
  }

  onEventActualizarCliente() async {
    _tocarCadaInput();

    if (!state.isValidForm) {
      state = state.copyWith(isSearch: false);
      return false;
    }

    await _getHead(0);
    await getDomicilio(1);
    await getEmpleo(2);
    await getDatosPersonales(3);
    await _getEstadosCiviles(4);
    await getDatosTelefonicos(5);
    await getEstadosFinancieros(6);
    await _getEntidadesFinancieras(7);
    await _getTipoCuenta(8);
    await getCuentaRecuperacion(9);
    await getActividadEconomica(10);

    for (var item in state.head) {
      if (item.titulo == 'Id cliente:') state = state.copyWith(idCliente: item.valor);
    }

    return checkCompleteData();
  }
}

final actualizarClienteProvider =
    StateNotifierProvider<ActualizarClienteNotifier, ActualizarClienteState>((ref) => ActualizarClienteNotifier());
