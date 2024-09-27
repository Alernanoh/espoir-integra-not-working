part of '../../database/isar_buro_rco.dart';

class ModelBuroCuentasCorrientes {
  final bool? success;
  final List<ModelBuroCuentasCorrientesData>? data;
  final String? message;

  ModelBuroCuentasCorrientes({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroCuentasCorrientes.fromRawJson(String str) => ModelBuroCuentasCorrientes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroCuentasCorrientes.fromJson(Map<String, dynamic> json) => ModelBuroCuentasCorrientes(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelBuroCuentasCorrientesData>.from(json["data"]!.map((x) => ModelBuroCuentasCorrientesData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroCuentasCorrientesData {
  final String? titulo;
  final String? valor;
  final int? alerta;

  ModelBuroCuentasCorrientesData({
    this.titulo,
    this.valor,
    this.alerta,
  });

  factory ModelBuroCuentasCorrientesData.fromRawJson(String str) => ModelBuroCuentasCorrientesData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroCuentasCorrientesData.fromJson(Map<String, dynamic> json) => ModelBuroCuentasCorrientesData(
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
