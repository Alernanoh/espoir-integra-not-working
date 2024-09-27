import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityStatus { notDetermined, isConnected, isDisonnected }

class InternetNotifier extends StateNotifier<ConnectivityStatus> {
  ConnectivityStatus? lastResult;
  ConnectivityStatus? newState;

  InternetNotifier() : super(ConnectivityStatus.isConnected) {
    _checkInitialConnection();
    if (state == ConnectivityStatus.isConnected) {
      lastResult = ConnectivityStatus.isConnected;
    } else {
      lastResult = ConnectivityStatus.isDisonnected;
    }
    lastResult = ConnectivityStatus.notDetermined;
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result case ConnectivityResult.mobile || ConnectivityResult.wifi) {
        newState = ConnectivityStatus.isConnected;
      } else if (result case ConnectivityResult.none) {
        newState = ConnectivityStatus.isDisonnected;
      }
      if (newState != lastResult) {
        state = newState!;
        lastResult = newState;
      }
    });
  }

  _checkInitialConnection() async {
    final result = await Connectivity().checkConnectivity();
    if (result case ConnectivityResult.mobile || ConnectivityResult.wifi) {
      newState = ConnectivityStatus.isConnected;
    } else if (result case ConnectivityResult.none) {
      newState = ConnectivityStatus.isDisonnected;
    }
    if (newState != lastResult) {
      state = newState!;
      lastResult = newState;
    }
  }
}

final internetProvider = StateNotifierProvider((ref) => InternetNotifier());
