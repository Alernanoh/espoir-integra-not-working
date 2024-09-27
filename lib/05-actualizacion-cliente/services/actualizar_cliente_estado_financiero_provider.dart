import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_estado_financiero_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteEstadoFinancieroState {
  final DateTime fecha;
  final double activos;
  final double pasivos;
  final double ingresos;
  final double gastos;
  final String errorMessage;
  final bool isSaving;
  final bool dataGuardado;

  ActualizarClienteEstadoFinancieroState({
    DateTime? fecha,
    this.activos = 0,
    this.pasivos = 0,
    this.ingresos = 0,
    this.gastos = 0,
    this.errorMessage = '',
    this.isSaving = false,
    this.dataGuardado = false,
  }) : fecha = fecha ?? DateTime.now();

  ActualizarClienteEstadoFinancieroState copyWith({
    DateTime? fecha,
    double? activos = 0,
    double? pasivos = 0,
    double? ingresos = 0,
    double? gastos = 0,
    String? errorMessage,
    bool? isSaving,
    bool? dataGuardado,
  }) =>
      ActualizarClienteEstadoFinancieroState(
        activos: activos ?? this.activos,
        pasivos: pasivos ?? this.pasivos,
        ingresos: ingresos ?? this.ingresos,
        gastos: gastos ?? this.gastos,
        errorMessage: errorMessage ?? this.errorMessage,
        isSaving: isSaving ?? this.isSaving,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteEstadoFinancieroNotifier extends StateNotifier<ActualizarClienteEstadoFinancieroState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteEstadoFinancieroNotifier() : super(ActualizarClienteEstadoFinancieroState());

  onChangeData(ModelActualizarClienteEstadoFinancieroData data) async {
    state = state.copyWith(
      fecha: data.fecha,
      activos: data.totalActivos,
      pasivos: data.totalPasivos,
      ingresos: data.totalIngresosMensuales,
      gastos: data.totalGastoMensuales,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  onChangeFormData({double? activos, double? pasivos, double? ingresos, double? gastos}) {
    state = state.copyWith(
      activos: activos ?? state.activos,
      pasivos: pasivos ?? state.pasivos,
      ingresos: ingresos ?? state.ingresos,
      gastos: gastos ?? state.gastos,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  saveData(String idCliente) async {
    final idUser = await storage.read(key: 'idUser');
    if (state.activos > 0 && state.pasivos > 0 && state.ingresos > 0 && state.gastos > 0) {
      if (state.activos - state.pasivos > 0) {
        if (state.ingresos - state.gastos > 0) {
          final resp = await WebServer().conectToServerExecute({
            'codigo': '0132',
            'AI_CLIENTE': idCliente,
            'AM_TOTAL_ACTIVOS': state.activos,
            'AM_TOTAL_PASIVOS': state.pasivos,
            'AM_TOTAL_INGRESOS_MENSUALES': state.ingresos,
            'AM_TOTAL_GASTO_MENSUALES': state.gastos,
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
          state = state.copyWith(errorMessage: 'Los ingresos no puede ser menor que los gastos', isSaving: true);
        }
      } else {
        state = state.copyWith(errorMessage: 'El activos no puede ser menor que el pasivo', isSaving: true);
      }
    } else {
      state = state.copyWith(errorMessage: 'Ingrese todos los campos', isSaving: true);
    }
  }
}

final actualizarClienteEstadoFinancieroProvider =
    StateNotifierProvider<ActualizarClienteEstadoFinancieroNotifier, ActualizarClienteEstadoFinancieroState>(
        (ref) => ActualizarClienteEstadoFinancieroNotifier());
