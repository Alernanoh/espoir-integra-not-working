import 'dart:convert';

class ModelActualizarClienteGuardar {
  final bool? success;
  final List<ModelActualizarClienteGuardarData>? data;
  final String? message;

  ModelActualizarClienteGuardar({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteGuardar.fromRawJson(String str) => ModelActualizarClienteGuardar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteGuardar.fromJson(Map<String, dynamic> json) => ModelActualizarClienteGuardar(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteGuardarData>.from(
                json["data"]!.map((x) => ModelActualizarClienteGuardarData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteGuardarData {
  final int? resultado;
  final String? mensaje;

  ModelActualizarClienteGuardarData({
    this.resultado,
    this.mensaje,
  });

  factory ModelActualizarClienteGuardarData.fromRawJson(String str) =>
      ModelActualizarClienteGuardarData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteGuardarData.fromJson(Map<String, dynamic> json) => ModelActualizarClienteGuardarData(
        resultado: json["RESULTADO"],
        mensaje: json["MENSAJE"],
      );

  Map<String, dynamic> toJson() => {
        "RESULTADO": resultado,
        "MENSAJE": mensaje,
      };
}
