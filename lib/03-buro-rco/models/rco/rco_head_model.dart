part of '../../database/isar_buro_rco.dart';

class ModelRcoHead {
  final bool? success;
  final List<ModelRcoHeadData>? data;
  final String? message;

  ModelRcoHead({
    this.success,
    this.data,
    this.message,
  });

  factory ModelRcoHead.fromRawJson(String str) => ModelRcoHead.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelRcoHead.fromJson(Map<String, dynamic> json) => ModelRcoHead(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelRcoHeadData>.from(json["data"]!.map((x) => ModelRcoHeadData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelRcoHeadData {
  final String? identificacion;
  final String? nombre;
  final String? calificacionCli;
  final int? edad;

  ModelRcoHeadData({
    this.identificacion,
    this.nombre,
    this.calificacionCli,
    this.edad,
  });

  factory ModelRcoHeadData.fromRawJson(String str) => ModelRcoHeadData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelRcoHeadData.fromJson(Map<String, dynamic> json) => ModelRcoHeadData(
        identificacion: json["identificacion"],
        nombre: json["nombre"],
        calificacionCli: json["calificacion_cli"],
        edad: json["edad"],
      );

  Map<String, dynamic> toJson() => {
        "identificacion": identificacion,
        "nombre": nombre,
        "calificacion_cli": calificacionCli,
        "edad": edad,
      };
}
