part of '../../database/isar_buro_rco.dart';

class ModelBuroResumen {
  final bool? success;
  final List<ModelBuroResumenData>? data;
  final String? message;

  ModelBuroResumen({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroResumen.fromRawJson(String str) => ModelBuroResumen.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroResumen.fromJson(Map<String, dynamic> json) => ModelBuroResumen(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelBuroResumenData>.from(json["data"]!.map((x) => ModelBuroResumenData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroResumenData {
  final String? titulo;
  final String? valor;
  final int? alerta;

  ModelBuroResumenData({
    this.titulo,
    this.valor,
    this.alerta,
  });

  factory ModelBuroResumenData.fromRawJson(String str) => ModelBuroResumenData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroResumenData.fromJson(Map<String, dynamic> json) => ModelBuroResumenData(
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
