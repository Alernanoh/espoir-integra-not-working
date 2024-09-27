import 'dart:convert';

class ModelActualizarClienteDatosTelefonicos {
  final bool? success;
  final List<ModelActualizarClienteDatosTelefonicosData>? data;
  final String? message;

  ModelActualizarClienteDatosTelefonicos({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteDatosTelefonicos.fromRawJson(String str) =>
      ModelActualizarClienteDatosTelefonicos.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDatosTelefonicos.fromJson(Map<String, dynamic> json) => ModelActualizarClienteDatosTelefonicos(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteDatosTelefonicosData>.from(
                json["data"]!.map((x) => ModelActualizarClienteDatosTelefonicosData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteDatosTelefonicosData {
  final String? tipoTelefono;
  final String? numTelefono;
  final DateTime? modificaFecha;

  ModelActualizarClienteDatosTelefonicosData({
    this.tipoTelefono,
    this.numTelefono,
    this.modificaFecha,
  });

  factory ModelActualizarClienteDatosTelefonicosData.fromRawJson(String str) =>
      ModelActualizarClienteDatosTelefonicosData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDatosTelefonicosData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteDatosTelefonicosData(
        tipoTelefono: json["tipo_telefono"],
        numTelefono: json["num_telefono"],
        modificaFecha: json["modifica_fecha"] == null ? null : DateTime.parse(json["modifica_fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "tipo_telefono": tipoTelefono,
        "num_telefono": numTelefono,
        "modifica_fecha": modificaFecha?.toIso8601String(),
      };
}
