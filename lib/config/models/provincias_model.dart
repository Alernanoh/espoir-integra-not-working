part of '../database/isar_ubicacion.dart';

class ModelProvincias {
  final bool? success;
  final List<ModelProvinciasData>? data;
  final String? message;

  ModelProvincias({
    this.success,
    this.data,
    this.message,
  });

  factory ModelProvincias.fromRawJson(String str) => ModelProvincias.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelProvincias.fromJson(Map<String, dynamic> json) => ModelProvincias(
        success: json["success"],
        data:
            json["data"] == null ? [] : List<ModelProvinciasData>.from(json["data"]!.map((x) => ModelProvinciasData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelProvinciasData {
  final int? prvProvincia;
  final String? prvNombre;

  ModelProvinciasData({
    this.prvProvincia,
    this.prvNombre,
  });

  factory ModelProvinciasData.fromRawJson(String str) => ModelProvinciasData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelProvinciasData.fromJson(Map<String, dynamic> json) => ModelProvinciasData(
        prvProvincia: json["prv_provincia"],
        prvNombre: json["prv_nombre"],
      );

  Map<String, dynamic> toJson() => {
        "prv_provincia": prvProvincia,
        "prv_nombre": prvNombre,
      };
}
