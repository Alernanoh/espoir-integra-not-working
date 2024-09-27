part of '../../database/isar_buro_rco.dart';

class ModelBuroIfis {
  final bool? success;
  final List<ModelBuroIfisData>? data;
  final String? message;

  ModelBuroIfis({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroIfis.fromRawJson(String str) => ModelBuroIfis.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroIfis.fromJson(Map<String, dynamic> json) => ModelBuroIfis(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelBuroIfisData>.from(json["data"]!.map((x) => ModelBuroIfisData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroIfisData {
  final String? titulo;
  final String? valor;
  final int? alerta;

  ModelBuroIfisData({
    this.titulo,
    this.valor,
    this.alerta,
  });

  factory ModelBuroIfisData.fromRawJson(String str) => ModelBuroIfisData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroIfisData.fromJson(Map<String, dynamic> json) => ModelBuroIfisData(
        titulo: json["titulo"],
        valor: json["valor"],
        alerta: json["alerta"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "valor": valor,
        "alerta": alerta,
      };
}
