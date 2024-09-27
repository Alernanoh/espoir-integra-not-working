import 'dart:convert';

class ModelGrupalGetImage {
  final bool? success;
  final ModelGrupalGetImageData? data;
  final String? message;

  ModelGrupalGetImage({
    this.success,
    this.data,
    this.message,
  });

  factory ModelGrupalGetImage.fromRawJson(String str) => ModelGrupalGetImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalGetImage.fromJson(Map<String, dynamic> json) => ModelGrupalGetImage(
        success: json["success"],
        data: json["data"] == null ? null : ModelGrupalGetImageData.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
        "message": message,
      };
}

class ModelGrupalGetImageData {
  final String? img;

  ModelGrupalGetImageData({
    this.img,
  });

  factory ModelGrupalGetImageData.fromRawJson(String str) => ModelGrupalGetImageData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGrupalGetImageData.fromJson(Map<String, dynamic> json) => ModelGrupalGetImageData(
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "img": img,
      };
}
