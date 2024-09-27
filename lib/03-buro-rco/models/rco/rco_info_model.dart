part of '../../database/isar_buro_rco.dart';

class ModelRcoInfo {
  final bool? success;
  final List<ModelRcoInfoData>? data;
  final String? message;

  ModelRcoInfo({
    this.success,
    this.data,
    this.message,
  });

  factory ModelRcoInfo.fromRawJson(String str) => ModelRcoInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelRcoInfo.fromJson(Map<String, dynamic> json) => ModelRcoInfo(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelRcoInfoData>.from(json["data"]!.map((x) => ModelRcoInfoData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelRcoInfoData {
  final String? tipo;
  final String? creCredito;
  final String? producto;
  final double? creMonto;
  final double? creSaldo;
  final double? saldoXVencer;
  final double? saldoVencido;
  final int? diasMora;
  final String? segmento;

  ModelRcoInfoData({
    this.tipo,
    this.creCredito,
    this.producto,
    this.creMonto,
    this.creSaldo,
    this.saldoXVencer,
    this.saldoVencido,
    this.diasMora,
    this.segmento,
  });

  factory ModelRcoInfoData.fromRawJson(String str) => ModelRcoInfoData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelRcoInfoData.fromJson(Map<String, dynamic> json) => ModelRcoInfoData(
        tipo: json["tipo"],
        creCredito: json["cre_credito"],
        producto: json["producto"],
        creMonto: json["cre_monto"]?.toDouble(),
        creSaldo: json["cre_saldo"]?.toDouble(),
        saldoXVencer: json["saldo_x_vencer"]?.toDouble(),
        saldoVencido: json["saldo_vencido"]?.toDouble(),
        diasMora: json["dias_mora"],
        segmento: json["segmento"],
      );

  Map<String, dynamic> toJson() => {
        "tipo": tipo,
        "cre_credito": creCredito,
        "producto": producto,
        "cre_monto": creMonto,
        "cre_saldo": creSaldo,
        "saldo_x_vencer": saldoXVencer,
        "saldo_vencido": saldoVencido,
        "dias_mora": diasMora,
        "segmento": segmento,
      };
}
