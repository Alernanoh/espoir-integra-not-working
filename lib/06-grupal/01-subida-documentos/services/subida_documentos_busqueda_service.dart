import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class GrupalSubidaDocumentosBusquedaState {
  final bool searchGrupos;
  final List<ModelGrupalGruposData> grupos;
  final List<bool> gruposBool;
  final List<ModelGrupalTiposDocumentosData> documentos;

  GrupalSubidaDocumentosBusquedaState({
    this.searchGrupos = false,
    this.grupos = const [],
    this.gruposBool = const [],
    this.documentos = const [],
  });

  GrupalSubidaDocumentosBusquedaState copyWith({
    bool? searchGrupos,
    List<ModelGrupalGruposData>? grupos,
    List<bool>? gruposBool,
    List<ModelGrupalTiposDocumentosData>? documentos,
  }) =>
      GrupalSubidaDocumentosBusquedaState(
        searchGrupos: searchGrupos ?? this.searchGrupos,
        grupos: grupos ?? this.grupos,
        gruposBool: gruposBool ?? this.gruposBool,
        documentos: documentos ?? this.documentos,
      );
}

class GrupalSubidaDocumentosBusquedaNotifier extends StateNotifier<GrupalSubidaDocumentosBusquedaState> {
  final storage = const FlutterSecureStorage();
  GrupalSubidaDocumentosBusquedaNotifier() : super(GrupalSubidaDocumentosBusquedaState());

  _onEventSearchGrupos() async {
    final idUser = await storage.read(key: 'idUser');
    state = state.copyWith(searchGrupos: true);
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0134',
      'AS_USUARIO': idUser,
    });
    final jsonBody = ModelGrupalGrupos.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(
        searchGrupos: false,
        grupos: jsonBody.data,
        gruposBool: List<bool>.filled(jsonBody.data?.length ?? 0, false),
      );
    } else {
      state = state.copyWith(
        searchGrupos: false,
        grupos: [],
        gruposBool: [],
      );
    }
  }

  _onEventSearchTiposDocumentos() async {
    state = state.copyWith(searchGrupos: true);
    final resp = await WebServer().conectToServerExecute({
      'codigo': '0135',
    });
    final jsonBody = ModelGrupalTiposDocumentos.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(
        searchGrupos: false,
        documentos: jsonBody.data,
      );
    } else {
      state = state.copyWith(
        searchGrupos: false,
        documentos: [],
      );
    }
  }

  onSearch() async {
    await _onEventSearchGrupos();
    await _onEventSearchTiposDocumentos();
  }

  onChangeBoolGrupo(int pos, bool value) {
    final bools = [...state.gruposBool];
    bools[pos] = value;
    state = state.copyWith(gruposBool: bools);
  }

  Future<List<ModelGrupalReproAgregarData>> onEventSearchReprocesadosAgregar(int idDoc) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0146', 'AI_ID_DOCUMENTO_CR': idDoc});
    final jsonBody = ModelGrupalReproAgregar.fromJson(resp);
    if (jsonBody.success!) {
      return jsonBody.data ?? [];
    } else {
      return [];
    }
  }

  Future<List<ModelGrupalReproCambiarData>> onEventSearchReprocesadosCambiar(int idDoc) async {
    final resp = await WebServer().conectToServerExecute({'codigo': '0147', 'AI_ID_DOCUMENTO_CR': idDoc});
    final jsonBody = ModelGrupalReproCambiar.fromJson(resp);
    if (jsonBody.success!) {
      return jsonBody.data ?? [];
    } else {
      return [];
    }
  }
}

final grupalSubDocBusquedaProvider =
    StateNotifierProvider<GrupalSubidaDocumentosBusquedaNotifier, GrupalSubidaDocumentosBusquedaState>(
        (ref) => GrupalSubidaDocumentosBusquedaNotifier());
