part of '../database/isar_subida_documentos.dart';

class ModelGrupalGrupos {
  final bool? success;
  final List<ModelGrupalGruposData>? data;
  final String? message;

  ModelGrupalGrupos({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalGrupos.fromRawJson(String str) => ModelGrupalGrupos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalGrupos.fromJson(Map<String, dynamic> json) => ModelGrupalGrupos(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalGruposData>.from(json["data"]!.map((x) => ModelGrupalGruposData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelGrupalGruposData {
  final String? grpNombre;
  final int? grpGrupo;
  final String? creCredito;
  final int? reuNumero;
  final String? estadoDoc;
  final int? creId;
  final int? idDocumentoCr;

  ModelGrupalGruposData({
    this.grpNombre,
    this.grpGrupo,
    this.creCredito,
    this.reuNumero,
    this.estadoDoc,
    this.creId,
    this.idDocumentoCr,
  });

  factory ModelGrupalGruposData.fromRawJson(String str) => ModelGrupalGruposData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalGruposData.fromJson(Map<String, dynamic> json) => ModelGrupalGruposData(
        grpNombre: json["grp_nombre"],
        grpGrupo: json["grp_grupo"],
        creCredito: json["cre_credito"],
        reuNumero: json["reu_numero"],
        estadoDoc: json["estado_doc"],
        creId: json["cre_id"],
        idDocumentoCr: json["id_documento_cr"],
      );

  Map<String, dynamic> toJson() => {
        "grp_nombre": grpNombre,
        "grp_grupo": grpGrupo,
        "cre_credito": creCredito,
        "reu_numero": reuNumero,
        "estado_doc": estadoDoc,
        "cre_id": creId,
        "id_documento_cr": idDocumentoCr,
      };
}
