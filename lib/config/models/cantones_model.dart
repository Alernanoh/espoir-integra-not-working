part of '../database/isar_ubicacion.dart';

class ModelCantones {
  final bool? success;
  final List<ModelCantonesData>? data;
  final String? message;

  ModelCantones({
    this.success,
    this.data,
    this.message,
  });

  factory ModelCantones.fromRawJson(String str) => ModelCantones.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelCantones.fromJson(Map<String, dynamic> json) => ModelCantones(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelCantonesData>.from(json["data"]!.map((x) => ModelCantonesData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelCantonesData {
  final int? cntCanton;
  final String? cntNombre;
  final int? cntProvincia;

  ModelCantonesData({
    this.cntCanton,
    this.cntNombre,
    this.cntProvincia,
  });

  factory ModelCantonesData.fromRawJson(String str) => ModelCantonesData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelCantonesData.fromJson(Map<String, dynamic> json) => ModelCantonesData(
        cntCanton: json["cnt_canton"],
        cntNombre: json["cnt_nombre"],
        cntProvincia: json["cnt_provincia"],
      );

  Map<String, dynamic> toJson() => {
        "cnt_canton": cntCanton,
        "cnt_nombre": cntNombre,
        "cnt_provincia": cntProvincia,
      };
}
