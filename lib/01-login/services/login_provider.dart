import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:integra_espoir/01-login/inputs/login_clave.dart';
import 'package:integra_espoir/01-login/inputs/login_usuario.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/models/error_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class LoginState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValidForm;
  final UsuarioInput usuario;
  final ClaveInput clave;
  final String errorMessage;
  final bool isLoginCorrect;

  LoginState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValidForm = false,
    this.usuario = const UsuarioInput.pure(),
    this.clave = const ClaveInput.pure(),
    this.errorMessage = '',
    this.isLoginCorrect = false,
  });

  LoginState copyWith({
    bool? isPosting,
    bool? isFormPosted,
    bool? isValidForm,
    UsuarioInput? usuario,
    ClaveInput? clave,
    String? errorMessage,
    bool? isLoginCorrect,
    bool? checkLogin,
  }) =>
      LoginState(
        isPosting: isPosting ?? this.isPosting,
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isValidForm: isValidForm ?? this.isValidForm,
        usuario: usuario ?? this.usuario,
        clave: clave ?? this.clave,
        errorMessage: errorMessage ?? this.errorMessage,
        isLoginCorrect: isLoginCorrect ?? this.isLoginCorrect,
      );
}

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(LoginState());

  onUsuarioChange(String value) {
    final newUsuario = UsuarioInput.dirty(value);
    state = state.copyWith(
      usuario: newUsuario,
      isValidForm: Formz.validate([newUsuario, state.clave]),
    );
  }

  onClaveChange(String value) {
    final newClave = ClaveInput.dirty(value);
    state = state.copyWith(
      clave: newClave,
      isValidForm: Formz.validate([newClave, state.usuario]),
    );
  }

  onEventLogin({required String argDeviceId, required Map<String, dynamic> argDeviceInfo}) {
    _tocarCadaInput();

    if (!state.isValidForm) return;
    state = state.copyWith(isPosting: true);
    if (state.isPosting) _sendData(deviceId: argDeviceId, deviceInfo: argDeviceInfo);
    state = state.copyWith(isPosting: false);
  }

  _tocarCadaInput() {
    final usuario = UsuarioInput.dirty(state.usuario.value);
    final clave = ClaveInput.dirty(state.clave.value);

    state = state.copyWith(
      isFormPosted: true,
      usuario: usuario,
      clave: clave,
      isValidForm: Formz.validate([usuario, clave]),
    );
  }

  _sendData({required String deviceId, required Map<String, dynamic> deviceInfo}) async {
    final resp = await WebServer().conectToServerLogin({
      'usuario': state.usuario.value.trim().toUpperCase(),
      'password': state.clave.value,
      'imei': state.usuario.value.trim().toUpperCase() == 'WEBUSER' ? '.' : deviceId,
      'info': deviceInfo,
      'version': Environment.versionApp,
    });
    final jsonBody = ModelError.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(isLoginCorrect: true);
      await WebServer().conectToLogsAuditoria(argLog: 3, argEntrada: 'CheckLogin', argResultado: 'User login successfully');
    } else {
      state = state.copyWith(errorMessage: jsonBody.message);
    }
  }
}

final loginProvider = StateNotifierProvider.autoDispose<LoginNotifier, LoginState>((ref) => LoginNotifier());
