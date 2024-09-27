part of '../database/isar_consulta_cartera.dart';

class ModelConsultaCartera {
  final bool? success;
  final List<ModelConsultaCarteraData>? data;
  final String? message;

  ModelConsultaCartera({
    this.success,
    this.data,
    this.message,
  });

  factory ModelConsultaCartera.fromRawJson(String str) => ModelConsultaCartera.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelConsultaCartera.fromJson(Map<String, dynamic> json) => ModelConsultaCartera(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelConsultaCarteraData>.from(json["data"]!.map((x) => ModelConsultaCarteraData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelConsultaCarteraData {
  final String? cedula;
  final String? nombre;
  final String? credito;
  final double? saldo;
  final int? diasMoraCnt;
  final String? estado;

  ModelConsultaCarteraData({
    this.cedula,
    this.nombre,
    this.credito,
    this.saldo,
    this.diasMoraCnt,
    this.estado,
  });

  factory ModelConsultaCarteraData.fromRawJson(String str) => ModelConsultaCarteraData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelConsultaCarteraData.fromJson(Map<String, dynamic> json) => ModelConsultaCarteraData(
        cedula: json["cedula"],
        nombre: json["nombre"],
        credito: json["credito"],
        saldo: json["saldo"]?.toDouble(),
        diasMoraCnt: json["dias_mora_cnt"],
        estado: json["estado"],
      );

  Map<String, dynamic> toJson() => {
        "cedula": cedula,
        "nombre": nombre,
        "credito": credito,
        "saldo": saldo,
        "dias_mora_cnt": diasMoraCnt,
        "estado": estado,
      };
}
