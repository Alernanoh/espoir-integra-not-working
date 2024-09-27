import 'dart:convert';

class ModelGrupalSavePaths {
  final bool? success;
  final List<ModelGrupalSavePathsData>? data;
  final String? message;

  ModelGrupalSavePaths({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalSavePaths.fromRawJson(String str) => ModelGrupalSavePaths.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalSavePaths.fromJson(Map<String, dynamic> json) => ModelGrupalSavePaths(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalSavePathsData>.from(json["data"]!.map((x) => ModelGrupalSavePathsData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelGrupalSavePathsData {
  final int? resultado;
  final String? mensaje;

  ModelGrupalSavePathsData({
    this.resultado,
    this.mensaje,
  });

  factory ModelGrupalSavePathsData.fromRawJson(String str) => ModelGrupalSavePathsData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalSavePathsData.fromJson(Map<String, dynamic> json) => ModelGrupalSavePathsData(
        resultado: json["RESULTADO"],
        mensaje: json["MENSAJE"],
      );

  Map<String, dynamic> toJson() => {
        "RESULTADO": resultado,
        "MENSAJE": mensaje,
      };
}
