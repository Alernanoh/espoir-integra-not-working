import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:formz/formz.dart';
import 'package:integra_espoir/03-buro-rco/inputs/buro_rco_cedula.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class BuroRcoState {
  final BuroRcoCedulaInput cedula;
  final bool isValidForm;
  final String errorMessage;
  final bool isSearch;
  final List<bool> completeData;
  final bool isDataBase;
  final List<ModelRcoHeadData> rcoHead;
  final List<ModelRcoInfoData> rcoInfo;
  final List<ModelBuroAvalData> buroAval;
  final List<ModelBuroHeadData> buroHead;
  final List<ModelBuroResumenData> buroResumen;
  final List<ModelBuroIfisData> buroIfis;
  final List<ModelBuroCuentasCorrientesData> buroCuentasCorrientes;
  final List<ModelBuroGraficoData> buroGrafico;

  BuroRcoState({
    this.cedula = const BuroRcoCedulaInput.pure(),
    this.isValidForm = false,
    this.errorMessage = '',
    this.isSearch = false,
    this.completeData = const [false, false, false, false, false, false, false, false],
    this.isDataBase = false,
    this.rcoHead = const [],
    this.rcoInfo = const [],
    this.buroAval = const [],
    this.buroHead = const [],
    this.buroResumen = const [],
    this.buroIfis = const [],
    this.buroCuentasCorrientes = const [],
    this.buroGrafico = const [],
  });

  BuroRcoState copyWith({
    BuroRcoCedulaInput? cedula,
    bool? isValidForm,
    String? errorMessage,
    bool? isSearch,
    List<bool>? completeData,
    bool? isDataBase,
    List<ModelRcoHeadData>? rcoHead,
    List<ModelRcoInfoData>? rcoInfo,
    List<ModelBuroAvalData>? buroAval,
    List<ModelBuroHeadData>? buroHead,
    List<ModelBuroResumenData>? buroResumen,
    List<ModelBuroIfisData>? buroIfis,
    List<ModelBuroCuentasCorrientesData>? buroCuentasCorrientes,
    List<ModelBuroGraficoData>? buroGrafico,
  }) =>
      BuroRcoState(
        cedula: cedula ?? this.cedula,
        isValidForm: isValidForm ?? this.isValidForm,
        errorMessage: errorMessage ?? this.errorMessage,
        isSearch: isSearch ?? this.isSearch,
        completeData: completeData ?? this.completeData,
        isDataBase: isDataBase ?? this.isDataBase,
        rcoHead: rcoHead ?? this.rcoHead,
        rcoInfo: rcoInfo ?? this.rcoInfo,
        buroAval: buroAval ?? this.buroAval,
        buroHead: buroHead ?? this.buroHead,
        buroResumen: buroResumen ?? this.buroResumen,
        buroIfis: buroIfis ?? this.buroIfis,
        buroCuentasCorrientes: buroCuentasCorrientes ?? this.buroCuentasCorrientes,
        buroGrafico: buroGrafico ?? this.buroGrafico,
      );
}

class BuroRcoNotifier extends StateNotifier<BuroRcoState> {
  final storage = const FlutterSecureStorage();
  BuroRcoNotifier() : super(BuroRcoState());

  onCedulaChange(String value) {
    final newCedula = BuroRcoCedulaInput.dirty(value);
    state = state.copyWith(
      cedula: newCedula,
      isValidForm: Formz.validate([newCedula]),
      errorMessage: '',
      isSearch: false,
      completeData: List<bool>.filled(8, false),
    );
  }

  _tocarCadaInput() {
    final cedula = BuroRcoCedulaInput.dirty(state.cedula.value);
    state = state.copyWith(
      cedula: cedula,
      isValidForm: Formz.validate([cedula]),
      errorMessage: cedula.errorMessage,
      isSearch: true,
    );
  }

  _getRcoHead(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0081', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelRcoHead.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        rcoHead: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        rcoHead: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getRcoInfo(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0082', 'AS_IDENTIFICACION': state.cedula.value});
    final jsonBody = ModelRcoInfo.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        rcoInfo: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        rcoInfo: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getActivarCedula(int posicion) async {
    final idUser = await storage.read(key: 'idUser');
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0103',
      'AS_TIPO_ID': 'C',
      'AS_IDENTIFICACION': state.cedula.value,
      'AS_USUARIO': idUser,
    });

    final jsonBody = ModelBuroAval.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroAval: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroAval: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getBuroHead(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0104', 'AI_CONSULTA': state.buroAval.first.idConsulta});
    final jsonBody = ModelBuroHead.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroHead: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroHead: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getBuroResumen(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0107', 'AI_CONSULTA': state.buroAval.first.idConsulta});
    final jsonBody = ModelBuroResumen.fromJson(resp);
    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroResumen: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroResumen: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getBuroIfis(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0105', 'AI_CONSULTA': state.buroAval.first.idConsulta});
    final jsonBody = ModelBuroIfis.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroIfis: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroIfis: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getBuroGrafico(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0106', 'AI_CONSULTA': state.buroAval.first.idConsulta});
    final jsonBody = ModelBuroGrafico.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroGrafico: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroGrafico: [],
        completeData: boolsComplete,
        errorMessage: jsonBody.message,
      );
    }
  }

  _getBuroCuentasCorrientes(int posicion) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0108', 'AI_CONSULTA': state.buroAval.first.idConsulta});
    final jsonBody = ModelBuroCuentasCorrientes.fromJson(resp);

    if (jsonBody.success!) {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = true;
      state = state.copyWith(
        buroCuentasCorrientes: jsonBody.data,
        completeData: boolsComplete,
      );
    } else {
      final boolsComplete = [...state.completeData];
      boolsComplete[posicion] = false;
      state = state.copyWith(
        buroCuentasCorrientes: [],
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

  onEventBuroRco() async {
    _tocarCadaInput();

    if (!state.isValidForm) {
      state = state.copyWith(isSearch: false);
      return false;
    }

    await _getRcoHead(0);
    await _getRcoInfo(1);
    await _getActivarCedula(2);
    if (state.buroAval.isNotEmpty) {
      await _getBuroHead(3);
      await _getBuroResumen(4);
      await _getBuroIfis(5);
      await _getBuroGrafico(6);
      await _getBuroCuentasCorrientes(7);
    }

    return checkCompleteData();
  }

  copyIsarData({
    required List<ModelRcoHeadData> rcoHead,
    required List<ModelRcoInfoData> rcoInfo,
    required List<ModelBuroHeadData> buroHead,
    required List<ModelBuroResumenData> buroResumen,
    required List<ModelBuroIfisData> buroIfis,
    required List<ModelBuroCuentasCorrientesData> buroInfocom,
    required List<ModelBuroGraficoData> buroGrafico,
  }) {
    state = state.copyWith(
      isDataBase: true,
      rcoHead: rcoHead,
      rcoInfo: rcoInfo,
      buroHead: buroHead,
      buroResumen: buroResumen,
      buroIfis: buroIfis,
      buroCuentasCorrientes: buroInfocom,
      buroGrafico: buroGrafico,
    );
  }
}

final buroRcoProvider = StateNotifierProvider<BuroRcoNotifier, BuroRcoState>((ref) => BuroRcoNotifier());
