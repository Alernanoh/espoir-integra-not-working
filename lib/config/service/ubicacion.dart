import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/config/database/isar_ubicacion.dart';
import 'package:integra_espoir/config/database/ubicacion_isar.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class UbicacionState {
  final String errorMessage;
  final String fecha;
  final List<ModelProvinciasData> provincias;
  final List<ModelCantonesData> cantones;
  final List<ModelParroquiasData> parroquias;
  final bool isLoading;

  UbicacionState({
    this.errorMessage = '',
    this.fecha = '',
    this.provincias = const [],
    this.cantones = const [],
    this.parroquias = const [],
    this.isLoading = false,
  });

  UbicacionState copyWith({
    String? errorMessage,
    String? fecha,
    List<ModelProvinciasData>? provincias,
    List<ModelCantonesData>? cantones,
    List<ModelParroquiasData>? parroquias,
    bool? isLoading,
  }) =>
      UbicacionState(
          errorMessage: errorMessage ?? this.errorMessage,
          fecha: fecha ?? this.fecha,
          provincias: provincias ?? this.provincias,
          cantones: cantones ?? this.cantones,
          parroquias: parroquias ?? this.parroquias,
          isLoading: isLoading ?? this.isLoading);
}

class UbicacionNotifier extends StateNotifier<UbicacionState> {
  UbicacionNotifier() : super(UbicacionState());

  _getProvincias() async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0102'});
    final jsonBody = ModelProvincias.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(provincias: jsonBody.data);
    } else {
      state = state.copyWith(
        provincias: [],
        errorMessage: jsonBody.message,
      );
    }
  }

  _getCantones() async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0100'});
    final jsonBody = ModelCantones.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(cantones: jsonBody.data);
    } else {
      state = state.copyWith(
        cantones: [],
        errorMessage: jsonBody.message,
      );
    }
  }

  _getParroquias() async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0101'});
    final jsonBody = ModelParroquias.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(parroquias: jsonBody.data);
    } else {
      state = state.copyWith(
        parroquias: [],
        errorMessage: jsonBody.message,
      );
    }
  }

  onEventUbicacion() async {
    state = state.copyWith(isLoading: true);
    await _getProvincias();
    await _getCantones();
    await _getParroquias();
    await UbicacionIsar().insertDatabaseUbicacion(
      fecha: DateTime.now(),
      provincias: state.provincias,
      cantones: state.cantones,
      parroquias: state.parroquias,
    );
    state = state.copyWith(fecha: DateTime.now().toString(), isLoading: false);
  }

  copyIsar({
    required String fecha,
    required List<ModelProvinciasData> provincias,
    required List<ModelCantonesData> cantones,
    required List<ModelParroquiasData> parroquias,
  }) {
    state = state.copyWith(
      fecha: fecha,
      provincias: provincias,
      cantones: cantones,
      parroquias: parroquias,
    );
  }
}

final ubicacionProvider = StateNotifierProvider<UbicacionNotifier, UbicacionState>((ref) => UbicacionNotifier());
