part of '../database/isar_ubicacion.dart';

class ModelParroquias {
  final bool? success;
  final List<ModelParroquiasData>? data;
  final String? message;

  ModelParroquias({
    this.success,
    this.data,
    this.message,
  });

  factory ModelParroquias.fromRawJson(String str) => ModelParroquias.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelParroquias.fromJson(Map<String, dynamic> json) => ModelParroquias(
        success: json["success"],
        data:
            json["data"] == null ? [] : List<ModelParroquiasData>.from(json["data"]!.map((x) => ModelParroquiasData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelParroquiasData {
  final int? parParroquia;
  final String? parNombre;
  final int? parCanton;

  ModelParroquiasData({this.parParroquia, this.parNombre, this.parCanton});

  factory ModelParroquiasData.fromRawJson(String str) => ModelParroquiasData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelParroquiasData.fromJson(Map<String, dynamic> json) => ModelParroquiasData(
        parParroquia: json["par_parroquia"],
        parNombre: json["par_nombre"],
        parCanton: json["par_canton"],
      );

  Map<String, dynamic> toJson() => {
        "par_parroquia": parParroquia,
        "par_nombre": parNombre,
        "par_canton": parCanton,
      };
}
