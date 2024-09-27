part of '../database/isar_subida_documentos.dart';

class ModelGrupalReproCambiar {
  final bool? success;
  final List<ModelGrupalReproCambiarData>? data;
  final String? message;

  ModelGrupalReproCambiar({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalReproCambiar.fromRawJson(String str) => ModelGrupalReproCambiar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalReproCambiar.fromJson(Map<String, dynamic> json) => ModelGrupalReproCambiar(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalReproCambiarData>.from(json["data"]!.map((x) => ModelGrupalReproCambiarData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelGrupalReproCambiarData {
  final int? dodId;
  final String? dodPathImagen;
  final String? dodObservacion;
  final int? dorTipoDocumento;

  ModelGrupalReproCambiarData({
    this.dodId,
    this.dodPathImagen,
    this.dodObservacion,
    this.dorTipoDocumento,
  });

  factory ModelGrupalReproCambiarData.fromRawJson(String str) => ModelGrupalReproCambiarData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalReproCambiarData.fromJson(Map<String, dynamic> json) => ModelGrupalReproCambiarData(
        dodId: json["dod_id"],
        dodPathImagen: json["dod_path_imagen"],
        dodObservacion: json["dod_observacion"],
        dorTipoDocumento: json["dor_tipo_documento"],
      );

  Map<String, dynamic> toJson() => {
        "dod_id": dodId,
        "dod_path_imagen": dodPathImagen,
        "dod_observacion": dodObservacion,
        "dor_tipo_documento": dorTipoDocumento,
      };
}
