part of '../../database/isar_buro_rco.dart';

class ModelBuroGrafico {
  final bool? success;
  final List<ModelBuroGraficoData>? data;
  final String? message;

  ModelBuroGrafico({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroGrafico.fromRawJson(String str) => ModelBuroGrafico.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroGrafico.fromJson(Map<String, dynamic> json) => ModelBuroGrafico(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelBuroGraficoData>.from(json["data"]!.map((x) => ModelBuroGraficoData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroGraficoData {
  final DateTime? fechaCorte;
  final double? totalDeuda;
  final double? valorVencidoTotal;

  ModelBuroGraficoData({
    this.fechaCorte,
    this.totalDeuda,
    this.valorVencidoTotal,
  });

  factory ModelBuroGraficoData.fromRawJson(String str) => ModelBuroGraficoData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroGraficoData.fromJson(Map<String, dynamic> json) => ModelBuroGraficoData(
        fechaCorte: json["fecha_corte"] == null ? null : DateTime.parse(json["fecha_corte"]),
        totalDeuda: json["total_deuda"]?.toDouble(),
        valorVencidoTotal: json["valor_vencido_total"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "fecha_corte":
            "${fechaCorte!.year.toString().padLeft(4, '0')}-${fechaCorte!.month.toString().padLeft(2, '0')}-${fechaCorte!.day.toString().padLeft(2, '0')}",
        "total_deuda": totalDeuda,
        "valor_vencido_total": valorVencidoTotal,
      };
}
