part of '../../database/isar_buro_rco.dart';

class ModelBuroAval {
  final bool? success;
  final List<ModelBuroAvalData>? data;
  final String? message;

  ModelBuroAval({
    this.success,
    this.data,
    this.message,
  });

  factory ModelBuroAval.fromRawJson(String str) => ModelBuroAval.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroAval.fromJson(Map<String, dynamic> json) => ModelBuroAval(
        success: json["success"],
        data: json["data"] == null ? [] : List<ModelBuroAvalData>.from(json["data"]!.map((x) => ModelBuroAvalData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

@embedded
class ModelBuroAvalData {
  final int? resultado;
  final String? mensaje;
  final int? idConsulta;

  ModelBuroAvalData({
    this.resultado,
    this.mensaje,
    this.idConsulta,
  });

  factory ModelBuroAvalData.fromRawJson(String str) => ModelBuroAvalData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelBuroAvalData.fromJson(Map<String, dynamic> json) => ModelBuroAvalData(
        resultado: json["RESULTADO"],
        mensaje: json["MENSAJE"],
        idConsulta: json["ID_CONSULTA"],
      );

  Map<String, dynamic> toJson() => {
        "RESULTADO": resultado,
        "MENSAJE": mensaje,
        "ID_CONSULTA": idConsulta,
      };
}
