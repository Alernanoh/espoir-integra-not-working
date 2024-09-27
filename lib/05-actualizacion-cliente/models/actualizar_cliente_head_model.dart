import 'dart:convert';

class ModelActualizarClienteHead {
  final bool? success;
  final List<ModelActualizarClienteHeadData>? data;
  final String? message;

  ModelActualizarClienteHead({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteHead.fromRawJson(String str) => ModelActualizarClienteHead.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteHead.fromJson(Map<String, dynamic> json) => ModelActualizarClienteHead(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteHeadData>.from(json["data"]!.map((x) => ModelActualizarClienteHeadData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteHeadData {
  final String? titulo;
  final String? valor;

  ModelActualizarClienteHeadData({
    this.titulo,
    this.valor,
  });

  factory ModelActualizarClienteHeadData.fromRawJson(String str) => ModelActualizarClienteHeadData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteHeadData.fromJson(Map<String, dynamic> json) => ModelActualizarClienteHeadData(
        titulo: json["titulo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "valor": valor,
      };
}
