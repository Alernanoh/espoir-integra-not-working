part of '../database/isar_subida_documentos.dart';

@embedded
class ModelGrupalTiposDocumentosImagenData {
  final int? tipo;
  final String? imagen;
  final String? microSeg;
  final int? cambio;

  ModelGrupalTiposDocumentosImagenData({
    this.tipo,
    this.imagen,
    this.microSeg,
    this.cambio,
  });
}
