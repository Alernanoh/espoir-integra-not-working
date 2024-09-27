import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/models/grupal_get_image_model.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/models/grupal_images_tipo_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class SubidaDocumentosImagenCambioState {
  final bool search;
  final List<ModelGrupalPathTipo> base64Image;
  final int idIsar;
  final List<ModelGrupalTiposDocumentosImagenData> imageIsar;

  SubidaDocumentosImagenCambioState({
    this.search = false,
    this.base64Image = const [],
    this.idIsar = 0,
    this.imageIsar = const [],
  });

  SubidaDocumentosImagenCambioState copyWith({
    bool? search,
    List<ModelGrupalPathTipo>? base64Image,
    int? idIsar,
    List<ModelGrupalTiposDocumentosImagenData>? imageIsar,
  }) =>
      SubidaDocumentosImagenCambioState(
        search: search ?? this.search,
        base64Image: base64Image ?? this.base64Image,
        idIsar: idIsar ?? this.idIsar,
        imageIsar: imageIsar ?? this.imageIsar,
      );
}

class SubidaDcoumentosImagenCambioNotifier
    extends StateNotifier<SubidaDocumentosImagenCambioState> {
  SubidaDcoumentosImagenCambioNotifier()
      : super(SubidaDocumentosImagenCambioState());

  Future<bool> onGetImagenCambio(List<ModelGrupalReproCambiarData> paths, int idIsar) async {
    state = state.copyWith(search: true, base64Image: [], idIsar: idIsar);
    onSetImagenCambio(idIsar);
    List<ModelGrupalPathTipo> aux = [];
    for (var item in paths) {
      final resp =
          await WebServer().conectToServerGetFile(item.dodPathImagen ?? '');
      final jsonBody = ModelGrupalGetImage.fromJson(resp);
      if (jsonBody.success!) {
        aux.add(ModelGrupalPathTipo(
          path: jsonBody.data!.img ?? '',
          tipo: item.dorTipoDocumento ?? 0,
          cambio: item.dodId ?? 0,
          observacion: item.dodObservacion,
        ));
      }
    }
    state = state.copyWith(search: false, base64Image: aux);
    return true;
  }

  onSetImagenCambio(int idIsar) async {
    final op =
        await SubidaDocumentosIsar().getAllSubidaDocumentosCambio(idIsar);
    state = state.copyWith(imageIsar: op);
  }

  onGetIsarImage(int cambio) {
    for (var item in state.imageIsar) {
      if (item.cambio == cambio) return item.imagen;
    }
    return '';
  }

  onGetTipoDocumento(int tipo, List<ModelGrupalTiposDocumentosData> documentos){
    final txt = documentos.where((element) => element.tddId == tipo).first.tddNombreDocumento;
    return txt;
  }
}

final grupalSubDocImagenCambioProvider = StateNotifierProvider<
        SubidaDcoumentosImagenCambioNotifier,
        SubidaDocumentosImagenCambioState>(
    (ref) => SubidaDcoumentosImagenCambioNotifier());
