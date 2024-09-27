import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_datos_telefonicos_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteDatosTelefonicosState {
  final String celular;
  final String domicilio;
  final String errorMessage;
  final bool isSaving;
  final bool dataGuardado;

  ActualizarClienteDatosTelefonicosState({
    this.celular = '',
    this.domicilio = '',
    this.errorMessage = '',
    this.isSaving = false,
    this.dataGuardado = false,
  });

  ActualizarClienteDatosTelefonicosState copyWith({
    String? celular,
    String? domicilio,
    String? errorMessage,
    bool? isSaving,
    bool? dataGuardado,
  }) =>
      ActualizarClienteDatosTelefonicosState(
        celular: celular ?? this.celular,
        domicilio: domicilio ?? this.domicilio,
        errorMessage: errorMessage ?? this.errorMessage,
        isSaving: isSaving ?? this.isSaving,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteDatosTelefonicosNotifier extends StateNotifier<ActualizarClienteDatosTelefonicosState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteDatosTelefonicosNotifier() : super(ActualizarClienteDatosTelefonicosState());

  onChangeData(List<ModelActualizarClienteDatosTelefonicosData> data) async {
    state = state.copyWith(
      celular: data[0].numTelefono,
      domicilio: data[1].numTelefono,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  onChangeFormData({String? celular, String? domicilio}) {
    state = state.copyWith(
      celular: celular ?? state.celular,
      domicilio: domicilio ?? state.domicilio,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  methodSave(String idCliente) async {
    final idUser = await storage.read(key: 'idUser');
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0128',
      'AI_ID_CLIENTE': idCliente,
      'AS_TELEFONO_CELULAR': state.celular,
      'AS_TELEFONO_DOMICILIO': state.domicilio,
      'AS_USUARIO': idUser,
    });
    final jsonBody = ModelActualizarClienteGuardar.fromJson(resp);
    if (jsonBody.success!) {
      if (jsonBody.data?.first.resultado == 1) {
        state = state.copyWith(
          dataGuardado: true,
          errorMessage: '',
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
  }

  saveData(String idCliente) async {
    state = state.copyWith(isSaving: true);
    if (state.celular.startsWith('09') && state.celular.length == 10) {
      if (state.domicilio.isEmpty) {
        methodSave(idCliente);
      } else if (state.domicilio.startsWith('0') && state.domicilio.length >= 9 && state.domicilio.length <= 10) {
        methodSave(idCliente);
      } else {
        state = state.copyWith(errorMessage: 'El domicilio no tiene el formato correcto', isSaving: true);
      }
    } else {
      state = state.copyWith(errorMessage: 'El celular no tiene el formato correcto', isSaving: true);
    }
  }
}

final actualizarClienteDatosTelefonicosProvider =
    StateNotifierProvider<ActualizarClienteDatosTelefonicosNotifier, ActualizarClienteDatosTelefonicosState>(
        (ref) => ActualizarClienteDatosTelefonicosNotifier());
