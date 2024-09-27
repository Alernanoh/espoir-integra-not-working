part of '../database/isar_drawer.dart';

class ModelDrawer {
  final bool success;
  final List<ModelDrawerData> data;
  final String message;

  ModelDrawer({
    required this.success,
    required this.data,
    required this.message,
  });

  factory ModelDrawer.fromRawJson(String str) => ModelDrawer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelDrawer.fromJson(Map<String, dynamic> json) => ModelDrawer(
        success: json["success"],
        data: List<ModelDrawerData>.from(json["data"].map((x) => ModelDrawerData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelDrawerData {
  final String? menNombre;
  final String? menIcono;
  final String? menRuta;

  ModelDrawerData({
    this.menNombre,
    this.menIcono,
    this.menRuta,
  });

  factory ModelDrawerData.fromRawJson(String str) => ModelDrawerData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelDrawerData.fromJson(Map<String, dynamic> json) => ModelDrawerData(
        menNombre: json["men_nombre"],
        menIcono: json["men_icono"],
        menRuta: json["men_ruta"],
      );

  Map<String, dynamic> toJson() => {
        "men_nombre": menNombre,
        "men_icono": menIcono,
        "men_ruta": menRuta,
      };
}
