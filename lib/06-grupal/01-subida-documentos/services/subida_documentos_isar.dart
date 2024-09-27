import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';

class GrupalSubidaDocumentosIsarState {
  final bool isLoading;
  final List<IsarGrupalSubidaDocumentos> grupos;

  GrupalSubidaDocumentosIsarState({
    this.isLoading = false,
    this.grupos = const [],
  });

  GrupalSubidaDocumentosIsarState copyWith({
    bool? isLoading,
    List<IsarGrupalSubidaDocumentos>? grupos,
  }) =>
      GrupalSubidaDocumentosIsarState(
        isLoading: isLoading ?? this.isLoading,
        grupos: grupos ?? this.grupos,
      );
}

class GrupalSubidaDocumentosIsarNotifier extends StateNotifier<GrupalSubidaDocumentosIsarState> {
  GrupalSubidaDocumentosIsarNotifier() : super(GrupalSubidaDocumentosIsarState());

  getDatabaseIsar({required List<IsarGrupalSubidaDocumentos> data}) async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(grupos: data);
    state = state.copyWith(isLoading: false);
  }
}

final grupalSubDocIsarProvider = StateNotifierProvider<GrupalSubidaDocumentosIsarNotifier, GrupalSubidaDocumentosIsarState>(
  (ref) => GrupalSubidaDocumentosIsarNotifier(),
);
