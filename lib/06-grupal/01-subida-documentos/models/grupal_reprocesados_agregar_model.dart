part of '../database/isar_subida_documentos.dart';

class ModelGrupalReproAgregar {
  final bool? success;
  final List<ModelGrupalReproAgregarData>? data;
  final String? message;

  ModelGrupalReproAgregar({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalReproAgregar.fromRawJson(String str) => ModelGrupalReproAgregar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalReproAgregar.fromJson(Map<String, dynamic> json) => ModelGrupalReproAgregar(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalReproAgregarData>.from(json["data"]!.map((x) => ModelGrupalReproAgregarData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelGrupalReproAgregarData {
  final int? dorTipoDocumento;

  ModelGrupalReproAgregarData({
    this.dorTipoDocumento,
  });

  factory ModelGrupalReproAgregarData.fromRawJson(String str) => ModelGrupalReproAgregarData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalReproAgregarData.fromJson(Map<String, dynamic> json) => ModelGrupalReproAgregarData(
        dorTipoDocumento: json["dor_tipo_documento"],
      );

  Map<String, dynamic> toJson() => {
        "dor_tipo_documento": dorTipoDocumento,
      };
}
