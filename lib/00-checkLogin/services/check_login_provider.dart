import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/models/error_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class CheckLoginState {
  final bool goHome;
  final bool goLogin;

  CheckLoginState({
    this.goHome = false,
    this.goLogin = false,
  });

  CheckLoginState copyWith({
    bool? goHome,
    bool? goLogin,
  }) =>
      CheckLoginState(
        goHome: goHome ?? this.goHome,
        goLogin: goLogin ?? this.goLogin,
      );
}

class CheckLoginNotifier extends StateNotifier<CheckLoginState> {
  final storage = const FlutterSecureStorage();
  CheckLoginNotifier() : super(CheckLoginState());

  checkLogin({required String deviceId, required Map<String, dynamic> deviceInfo}) async {
    final idToken = await storage.read(key: 'idToken');
    final idUser = await storage.read(key: 'idUser');
    final idPass = await storage.read(key: 'idPass');

    if (idToken == null || idUser == null || idPass == null) {
      state = state.copyWith(goLogin: true);
    } else {
      final internet = await Connectivity().checkConnectivity();
      if (internet case ConnectivityResult.mobile || ConnectivityResult.wifi) {
        _getToken(deviceId, deviceInfo);
      } else {
        state = state.copyWith(goHome: true);
      }
    }
  }

  _getToken(String deviceId, Map<String, dynamic> deviceInfo) async {
    final idUser = await storage.read(key: 'idUser');
    final idPass = await storage.read(key: 'idPass');

    final resp = await WebServer().conectToServerLogin({
      'usuario': idUser.toString().trim().toUpperCase(),
      'password': idPass,
      'imei': idUser.toString().trim().toUpperCase() == 'WEBUSER' ? '.' : deviceId,
      'info': deviceInfo,
      'version': Environment.versionApp,
    });
    final jsonBody = ModelError.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(goHome: true);
      await WebServer().conectToLogsAuditoria(argLog: 3, argEntrada: 'CheckLogin', argResultado: 'User login successfully');
    } else {
      storage.deleteAll();
      state = state.copyWith(goLogin: true);
    }
  }
}

final checkLoginProvider = StateNotifierProvider<CheckLoginNotifier, CheckLoginState>((ref) => CheckLoginNotifier());
