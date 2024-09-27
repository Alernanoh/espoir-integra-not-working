part of '../../database/isar_buro_rco.dart';

class ModelBuroHead {
  final bool? success;
  final List<ModelBuroHeadData>? data;
  final String? message;

  ModelBuroHead({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroHead.fromRawJson(String str) => ModelBuroHead.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroHead.fromJson(Map<String, dynamic> json) => ModelBuroHead(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelBuroHeadData>.from(json["data"]!.map((x) => ModelBuroHeadData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroHeadData {
  final String? titulo;
  final String? valor;

  ModelBuroHeadData({
    this.titulo,
    this.valor,
  });

  factory ModelBuroHeadData.fromRawJson(String str) => ModelBuroHeadData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroHeadData.fromJson(Map<String, dynamic> json) => ModelBuroHeadData(
        titulo: json["titulo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "valor": valor,
      };
}
