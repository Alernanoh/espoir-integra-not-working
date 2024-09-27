import 'dart:convert';

class ModelGrupalSaveImages {
  final bool? success;
  final List<ModelGrupalSaveImagesData>? data;
  final String? message;

  ModelGrupalSaveImages({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalSaveImages.fromRawJson(String str) => ModelGrupalSaveImages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalSaveImages.fromJson(Map<String, dynamic> json) => ModelGrupalSaveImages(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelGrupalSaveImagesData>.from(json["data"]!.map((x) => ModelGrupalSaveImagesData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelGrupalSaveImagesData {
  final String? nombre;

  ModelGrupalSaveImagesData({
    this.nombre,
  });

  factory ModelGrupalSaveImagesData.fromRawJson(String str) => ModelGrupalSaveImagesData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalSaveImagesData.fromJson(Map<String, dynamic> json) => ModelGrupalSaveImagesData(
        nombre: json["nombre"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
      };
}
