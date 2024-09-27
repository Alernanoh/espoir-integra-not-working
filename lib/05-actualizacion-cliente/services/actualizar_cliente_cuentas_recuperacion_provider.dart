import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_cuenta_recuperacion_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_entidades_financieras_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_guardar_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_tipo_cuenta_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class ActualizarClienteCuentaRecuperacionState {
  final String numeroCuenta;
  final List<String> bancos;
  final String bancoName;
  final int bancoCode;
  final List<String> cuentas;
  final String cuentaName;
  final String cuentaCode;
  final String errorMessage;
  final bool isSaving;
  final bool dataGuardado;

  ActualizarClienteCuentaRecuperacionState({
    this.numeroCuenta = '',
    this.bancos = const [],
    this.bancoName = '',
    this.bancoCode = 0,
    this.cuentas = const [],
    this.cuentaName = '',
    this.cuentaCode = '',
    this.errorMessage = '',
    this.isSaving = false,
    this.dataGuardado = false,
  });

  ActualizarClienteCuentaRecuperacionState copyWith({
    String? numeroCuenta,
    List<String>? bancos,
    String? bancoName,
    int? bancoCode,
    List<String>? cuentas,
    String? cuentaName,
    String? cuentaCode,
    String? errorMessage,
    bool? isSaving,
    bool? dataGuardado,
  }) =>
      ActualizarClienteCuentaRecuperacionState(
        numeroCuenta: numeroCuenta ?? this.numeroCuenta,
        bancos: bancos ?? this.bancos,
        bancoName: bancoName ?? this.bancoName,
        bancoCode: bancoCode ?? this.bancoCode,
        cuentas: cuentas ?? this.cuentas,
        cuentaName: cuentaName ?? this.cuentaName,
        cuentaCode: cuentaCode ?? this.cuentaCode,
        errorMessage: errorMessage ?? this.errorMessage,
        isSaving: isSaving ?? this.isSaving,
        dataGuardado: dataGuardado ?? this.dataGuardado,
      );
}

class ActualizarClienteCuentaRecuperacionNotifier extends StateNotifier<ActualizarClienteCuentaRecuperacionState> {
  final storage = const FlutterSecureStorage();
  ActualizarClienteCuentaRecuperacionNotifier() : super(ActualizarClienteCuentaRecuperacionState());

  onChangeData(
    List<ModelActualizarClienteEntidadesFinancierasData> entidadFinanciera,
    List<ModelActualizarClienteTipoCuentaData> tipoCuenta,
    ModelActualizarClienteCuentarecuperacionData data,
  ) async {
    List<String> nameBancos = [];
    for (var item in entidadFinanciera) {
      nameBancos.add(item.efiDescripcion ?? '');
    }

    List<String> nameCuentas = [];
    for (var item in tipoCuenta) {
      nameCuentas.add(item.tcuDescripcion ?? '');
    }

    state = state.copyWith(
      numeroCuenta: data.numeroCuenta,
      bancos: nameBancos,
      bancoName: data.entidadFinancieraDescrip,
      bancoCode: data.entidadFinanciera,
      cuentas: nameCuentas,
      cuentaName: data.tipoCuentaDescrip,
      cuentaCode: data.tipoCuenta,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  onChangeTipoCuenta(String value, List<ModelActualizarClienteTipoCuentaData> cuentas) {
    for (var item in cuentas) {
      if (value == item.tcuDescripcion) {
        state = state.copyWith(
          cuentaCode: item.tcuTipoCuenta,
          cuentaName: value,
          errorMessage: '',
          isSaving: false,
          dataGuardado: false,
        );
      }
    }
  }

  onChangeEntidadesFinancieras(String value, List<ModelActualizarClienteEntidadesFinancierasData> entidadesFinancieras) {
    for (var item in entidadesFinancieras) {
      if (value == item.efiDescripcion) {
        state = state.copyWith(
          bancoCode: item.efiEntidadFinanciera,
          bancoName: value,
          errorMessage: '',
          isSaving: false,
          dataGuardado: false,
        );
      }
    }
  }

  onChangeInputText(String value) {
    state = state.copyWith(
      numeroCuenta: value,
      errorMessage: '',
      isSaving: false,
      dataGuardado: false,
    );
  }

  saveData(String idCliente) async {
    state = state.copyWith(isSaving: true);
    final idUser = await storage.read(key: 'idUser');

    if (state.cuentaCode.isNotEmpty && state.bancoCode != 0 && state.numeroCuenta.isNotEmpty) {
      final resp = await WebServer().conectToServerExecute({
        'codigo': '0130',
        'AI_ID_CLIENTE': idCliente,
        'AI_CODIGO_BANCO': state.bancoCode,
        'AS_NUMERO_CUENTA': state.numeroCuenta,
        'AS_TIPO_CUENTA': state.cuentaCode,
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

final actualizarClienteCuentaRecuperacionProvider =
    StateNotifierProvider<ActualizarClienteCuentaRecuperacionNotifier, ActualizarClienteCuentaRecuperacionState>(
        (ref) => ActualizarClienteCuentaRecuperacionNotifier());
