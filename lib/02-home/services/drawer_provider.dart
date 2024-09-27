import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/02-home/database/drawer_isar.dart';
import 'package:integra_espoir/02-home/database/isar_drawer.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class DrawerState {
  final bool isLoading;
  final List<ModelDrawerData> dataDrawer;
  final bool isError;

  DrawerState({
    this.isLoading = false,
    this.dataDrawer = const [],
    this.isError = false,
  });

  DrawerState copyWith({
    bool? isLoading,
    List<ModelDrawerData>? dataDrawer,
    bool? isError,
  }) =>
      DrawerState(
        isLoading: isLoading ?? this.isLoading,
        dataDrawer: dataDrawer ?? this.dataDrawer,
        isError: isError ?? this.isError,
      );
}

class DrawerNotifier extends StateNotifier<DrawerState> {
  DrawerNotifier() : super(DrawerState(dataDrawer: []));
  final storage = const FlutterSecureStorage();

  Future<void> onEventDrawer() async {
    final user = await storage.read(key: 'idUser');
    state = state.copyWith(isLoading: true);
    final resp = await WebServer().conectToServerExecute({'codigo': '0080', 'AS_USUARIO': user});
    final jsonBody = ModelDrawer.fromJson(resp);
    if (jsonBody.success) {
      DrawerIsar().insertDatabaseDrawer(drawer: jsonBody.data);
      state = state.copyWith(dataDrawer: [...jsonBody.data]);
    } else {
      state = state.copyWith(isError: true);
    }
    state = state.copyWith(isLoading: false);
  }

  copyIsarData({
    required List<ModelDrawerData> drawerData,
  }) {
    state = state.copyWith(
      dataDrawer: drawerData,
    );
  }
}

final drawerProvider = StateNotifierProvider<DrawerNotifier, DrawerState>((ref) => DrawerNotifier());
