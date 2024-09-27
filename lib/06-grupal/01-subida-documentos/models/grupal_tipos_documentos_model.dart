part of '../database/isar_subida_documentos.dart';

class ModelGrupalTiposDocumentos {
  final bool? success;
  final List<ModelGrupalTiposDocumentosData>? data;
  final String? message;

  ModelGrupalTiposDocumentos({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalTiposDocumentos.fromRawJson(String str) => ModelGrupalTiposDocumentos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalTiposDocumentos.fromJson(Map<String, dynamic> json) => ModelGrupalTiposDocumentos(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalTiposDocumentosData>.from(json["data"]!.map((x) => ModelGrupalTiposDocumentosData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelGrupalTiposDocumentosData {
  final int? tddId;
  final String? tddNombreDocumento;
  final int? tddEsObligatorio;

  ModelGrupalTiposDocumentosData({
    this.tddId,
    this.tddNombreDocumento,
    this.tddEsObligatorio,
  });

  factory ModelGrupalTiposDocumentosData.fromRawJson(String str) => ModelGrupalTiposDocumentosData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalTiposDocumentosData.fromJson(Map<String, dynamic> json) => ModelGrupalTiposDocumentosData(
        tddId: json["tdd_id"],
        tddNombreDocumento: json["tdd_nombre_documento"],
        tddEsObligatorio: json["tdd_es_obligatorio"],
      );

  Map<String, dynamic> toJson() => {
        "tdd_id": tddId,
        "tdd_nombre_documento": tddNombreDocumento,
        "tdd_es_obligatorio": tddEsObligatorio,
      };
}
