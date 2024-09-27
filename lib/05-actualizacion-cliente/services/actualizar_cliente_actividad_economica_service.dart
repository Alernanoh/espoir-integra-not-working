import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_actividad_economica_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_consulta_act_eco_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteActividadEconomicaState {
  final int codActividad;
  final String codCiu;
  final String nameActividad;
  final bool isSearch;
  final bool completeData;
  final String errorMessage;
  final bool isSaving;
  final bool dataGuardado;

  ActualizarClienteActividadEconomicaState({
    this.codActividad = 0,
    this.codCiu = '',
    this.nameActividad = '',
    this.isSearch = false,
    this.completeData = false,
    this.errorMessage = '',
    this.isSaving = false,
    this.dataGuardado = false,
  });

  ActualizarClienteActividadEconomicaState copyWith({
    int? codActividad,
    String? codCiu,
    String? nameActividad,
    bool? isSearch,
    bool? completeData,
    String? errorMessage,
    bool? isSaving,
    bool? dataGuardado,
  }) =>
      ActualizarClienteActividadEconomicaState(
        codActividad: codActividad ?? this.codActividad,
        codCiu: codCiu ?? this.codCiu,
        nameActividad: nameActividad ?? this.nameActividad,
        isSearch: isSearch ?? this.isSearch,
        completeData: completeData ?? this.completeData,
        errorMessage: errorMessage ?? this.errorMessage,
        isSaving: isSaving ?? this.isSaving,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteActividadEconomicaNotifier extends StateNotifier<ActualizarClienteActividadEconomicaState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteActividadEconomicaNotifier() : super(ActualizarClienteActividadEconomicaState());

  onChangeData(List<ModelActualizarClienteActividadEconomicaData> data) async {
    state = state.copyWith(
      codActividad: data[0].actividadEcon,
      codCiu: data[0].actEconCodigoCiu,
      nameActividad: data[0].actividadEconDescrip,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  onCodigoChange(String value) {
    state = state.copyWith(
      codCiu: value,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  getActividadEconomica() async {
    state = state.copyWith(isSearch: true);
    final resp = await WebServer().conectToServerExecute({'codigo': '0124', 'AS_CODIGO_ACT_EC': state.codCiu});
    final jsonBody = ModelActualizarClienteConsultaActividadEconomica.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(
        isSearch: false,
        nameActividad: jsonBody.data?.first.actividad,
        codActividad: jsonBody.data?.first.actividadId,
        completeData: true,
      );
    } else {
      state = state.copyWith(
        isSearch: false,
        nameActividad: '',
        completeData: false,
      );
    }
  }

  saveData(String idCliente) async {
    state = state.copyWith(isSaving: true);
    final idUser = await storage.read(key: 'idUser');
    if (state.codActividad != 0) {
      final resp = await WebServer().conectToServerExecute({
        'codigo': '0131',
        'AI_ID_CLIENTE': idCliente,
        'AI_CODIGO_ACTIVIDAD': state.codActividad,
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
            isSaving: true,
          );
        }
      } else {
        state = state.copyWith(
          dataGuardado: false,
          errorMessage: jsonBody.message,
          isSaving: true,
        );
      }
    } else {
      state = state.copyWith(errorMessage: 'Ingrese todos los campos', isSaving: true);
    }
  }
}

final actualizarClienteActividadEconomicaProvider =
    StateNotifierProvider<ActualizarClienteActividadEconomicaNotifier, ActualizarClienteActividadEconomicaState>(
        (ref) => ActualizarClienteActividadEconomicaNotifier());
