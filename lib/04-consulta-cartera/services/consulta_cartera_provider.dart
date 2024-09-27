import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:formz/formz.dart';
import 'package:integra_espoir/04-consulta-cartera/inputs/consulta_cartera_cedula.dart';
import 'package:integra_espoir/04-consulta-cartera/inputs/consulta_cartera_grupo.dart';
import 'package:integra_espoir/04-consulta-cartera/database/isar_consulta_cartera.dart';

import 'package:integra_espoir/config/service/web_server.dart';

class ConsultaCarteraState {
  final ConsultaCarteraCedulaInput cedula;
  final ConsultaCarteraGrupoInput grupo;
  final bool isValidForm;
  final String errorMessage;
  final bool isSearch;
  final List<bool> completeData;
  final bool isDataBase;
  final List<ModelConsultaCarteraData> consultaCartera;
  final List<String> transaccionesOne;
  final List<String> transaccionesTwo;
  final List<String> transaccionesThree;
  final List<String> deudasOne;
  final List<String> deudasTwo;
  final List<String> deudasThree;
  final List<String> informacionOne;
  final List<String> informacionTwo;
  final List<String> informacionThree;
  final List<String> valoresOne;
  final List<String> valoresTwo;
  final List<String> valoresThree;

  ConsultaCarteraState({
    this.cedula = const ConsultaCarteraCedulaInput.pure(),
    this.grupo = const ConsultaCarteraGrupoInput.pure(),
    this.isValidForm = false,
    this.errorMessage = '',
    this.isSearch = false,
    this.completeData = const [false],
    this.isDataBase = false,
    this.consultaCartera = const [],
    this.transaccionesOne = const [],
    this.transaccionesTwo = const [],
    this.transaccionesThree = const [],
    this.deudasOne = const [],
    this.deudasTwo = const [],
    this.deudasThree = const [],
    this.informacionOne = const [],
    this.informacionTwo = const [],
    this.informacionThree = const [],
    this.valoresOne = const [],
    this.valoresTwo = const [],
    this.valoresThree = const [],
  });

  ConsultaCarteraState copyWith({
    ConsultaCarteraCedulaInput? cedula,
    ConsultaCarteraGrupoInput? grupo,
    bool? isValidForm,
    String? errorMessage,
    bool? isSearch,
    List<bool>? completeData,
    bool? isDataBase,
    List<ModelConsultaCarteraData>? consultaCartera,
    List<String>? transaccionesOne,
    List<String>? transaccionesTwo,
    List<String>? transaccionesThree,
    List<String>? deudasOne,
    List<String>? deudasTwo,
    List<String>? deudasThree,
    List<String>? informacionOne,
    List<String>? informacionTwo,
    List<String>? informacionThree,
    List<String>? valoresOne,
    List<String>? valoresTwo,
    List<String>? valoresThree,
  }) =>
      ConsultaCarteraState(
        cedula: cedula ?? this.cedula,
        grupo: grupo ?? this.grupo,
        isValidForm: isValidForm ?? this.isValidForm,
        errorMessage: errorMessage ?? this.errorMessage,
        isSearch: isSearch ?? this.isSearch,
        completeData: completeData ?? this.completeData,
        isDataBase: isDataBase ?? this.isDataBase,
        consultaCartera: consultaCartera ?? this.consultaCartera,
        transaccionesOne: transaccionesOne ?? this.transaccionesOne,
        transaccionesTwo: transaccionesTwo ?? this.transaccionesTwo,
        transaccionesThree: transaccionesThree ?? this.transaccionesThree,
        deudasOne: deudasOne ?? this.deudasOne,
        deudasTwo: deudasTwo ?? this.deudasTwo,
        deudasThree: deudasThree ?? this.deudasThree,
        informacionOne: informacionOne ?? this.informacionOne,
        informacionTwo: informacionTwo ?? this.informacionTwo,
        informacionThree: informacionThree ?? this.informacionThree,
        valoresOne: valoresOne ?? this.valoresOne,
        valoresTwo: valoresTwo ?? this.valoresTwo,
        valoresThree: valoresThree ?? this.valoresThree,
      );
}

class ConsultaCarteraNotifier extends StateNotifier<ConsultaCarteraState> {
  final storage = const FlutterSecureStorage();
  ConsultaCarteraNotifier() : super(ConsultaCarteraState());

  onCedulaChange(String value) {
    final newCedula = ConsultaCarteraCedulaInput.dirty(value);
    state = state.copyWith(
      cedula: newCedula,
      isValidForm: Formz.validate([newCedula, state.grupo]),
      errorMessage: '',
      isSearch: false,
      completeData: [false],
    );
  }

  onGrupoChange(String value) {
    final newGrupo = ConsultaCarteraGrupoInput.dirty(value);
    state = state.copyWith(
      grupo: newGrupo,
      isValidForm: Formz.validate([newGrupo, state.cedula]),
      errorMessage: '',
      isSearch: false,
      completeData: [false],
    );
  }

  _tocarCadaInput() {
    final cedula = ConsultaCarteraCedulaInput.dirty(state.cedula.value);
    final grupo = ConsultaCarteraGrupoInput.dirty(state.grupo.value);

    if (cedula.isValid || grupo.isValid) {
      state = state.copyWith(
        cedula: cedula,
        grupo: grupo,
        isValidForm: true,
        errorMessage: '',
        isSearch: true,
      );
    } else {
      state = state.copyWith(
        cedula: cedula,
        grupo: grupo,
        isValidForm: true,
        errorMessage: 'Ingrese uno de los dos campos',
        isSearch: true,
      );
    }
  }

  _getDataConsultaCartera() async {
    Map<String, String> params = {};
    if (state.grupo.isValid) {
      params = {'codigo': '0089', 'AS_IDENTIFICACION': '', 'AS_NOMBRE': state.grupo.value};
    } else {
      params = {'codigo': '0089', 'AS_IDENTIFICACION': state.cedula.value, 'AS_NOMBRE': ''};
    }

    final resp = await WebServer().conectToServerExecute(params);
    final jsonBody = ModelConsultaCartera.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[0] = true;
      state = state.copyWith(
        consultaCartera: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[0] = false;
      state = state.copyWith(
        consultaCartera: [],
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
    state = state.copyWith(isSearch: false, isDataBase: false);
    return isOK;
  }

  onEventConsultaCartera() async {
    _tocarCadaInput();

    if (!state.isValidForm) {
      state = state.copyWith(isSearch: false);
      return false;
    }

    await _getDataConsultaCartera();
    if (state.consultaCartera.isNotEmpty) {
      if (state.consultaCartera.asMap().containsKey(0)) {
        Map<String, List> data = await getDataCredito(state.consultaCartera[0].credito ?? '');
        final op = _convertData(data);
        state = state.copyWith(
          transaccionesOne: [...op[0]],
          deudasOne: [...op[1]],
          informacionOne: [...op[2]],
          valoresOne: [...op[3]],
        );
      } else {
        state = state.copyWith(transaccionesOne: [], deudasOne: [], informacionOne: [], valoresOne: []);
      }
      if (state.consultaCartera.asMap().containsKey(1)) {
        Map<String, List> data = await getDataCredito(state.consultaCartera[1].credito ?? '');
        final op = _convertData(data);
        state = state.copyWith(
          transaccionesTwo: [...op[0]],
          deudasTwo: [...op[1]],
          informacionTwo: [...op[2]],
          valoresTwo: [...op[3]],
        );
      } else {
        state = state.copyWith(transaccionesTwo: [], deudasTwo: [], informacionTwo: [], valoresTwo: []);
      }
      if (state.consultaCartera.asMap().containsKey(2)) {
        Map<String, List> data = await getDataCredito(state.consultaCartera[2].credito ?? '');
        final op = _convertData(data);
        state = state.copyWith(
          transaccionesThree: [...op[0]],
          deudasThree: [...op[1]],
          informacionThree: [...op[2]],
          valoresThree: [...op[3]],
        );
      } else {
        state = state.copyWith(transaccionesThree: [], deudasThree: [], informacionThree: [], valoresThree: []);
      }
    }

    return checkCompleteData();
  }

  Future getDataCredito(String credito) async {
    Map<String, List> itemsCreditos = {'Transacciones': [], 'Deudas': [], 'Informacion': [], 'Valores': []};
    //Transacciones
    Map<String, dynamic> respTransacciones = await WebServer().conectToServerExecute({'codigo': '0090', 'AS_CREDITO': credito});
    itemsCreditos['Transacciones'] = [...respTransacciones['data']];
    //Deudas
    Map<String, dynamic> respDeudas = await WebServer().conectToServerExecute({'codigo': '0091', 'AS_CREDITO': credito});
    itemsCreditos['Deudas'] = [...respDeudas['data']];
    //Informacion
    Map<String, dynamic> respInformacion = await WebServer().conectToServerExecute({'codigo': '0093', 'AS_CREDITO': credito});
    itemsCreditos['Informacion'] = [...respInformacion['data']];
    //Valores
    Map<String, dynamic> respValores = await WebServer().conectToServerExecute({'codigo': '0094', 'AS_CREDITO': credito});
    itemsCreditos['Valores'] = [...respValores['data']];

    return itemsCreditos;
  }

  _convertData(Map<String, List> data) {
    List dataComplete = [];
    List<String> trans = [];
    List<String> deuda = [];
    List<String> infor = [];
    List<String> valor = [];
    data['Transacciones']?.forEach((item) => trans.add(json.encode(item)));
    data['Deudas']?.forEach((item) => deuda.add(json.encode(item)));
    data['Informacion']?.forEach((item) => infor.add(json.encode(item)));
    data['Valores']?.forEach((item) => valor.add(json.encode(item)));
    dataComplete.add(trans);
    dataComplete.add(deuda);
    dataComplete.add(infor);
    dataComplete.add(valor);
    return dataComplete;
  }

  copyIsarData({
    required List<ModelConsultaCarteraData> data,
    required List<String> transaccionesOne,
    required List<String> transaccionesTwo,
    required List<String> transaccionesThree,
    required List<String> deudasOne,
    required List<String> deudasTwo,
    required List<String> deudasThree,
    required List<String> informacionOne,
    required List<String> informacionTwo,
    required List<String> informacionThree,
    required List<String> valoresOne,
    required List<String> valoresTwo,
    required List<String> valoresThree,
  }) {
    state = state.copyWith(
      isDataBase: true,
      consultaCartera: data,
      transaccionesOne: transaccionesOne,
      transaccionesTwo: transaccionesTwo,
      transaccionesThree: transaccionesThree,
      deudasOne: deudasOne,
      deudasTwo: deudasTwo,
      deudasThree: deudasThree,
      informacionOne: informacionOne,
      informacionTwo: informacionTwo,
      informacionThree: informacionThree,
      valoresOne: valoresOne,
      valoresTwo: valoresTwo,
      valoresThree: valoresThree,
    );
  }
}

final consultaCarteraProvider =
    StateNotifierProvider<ConsultaCarteraNotifier, ConsultaCarteraState>((ref) => ConsultaCarteraNotifier());
