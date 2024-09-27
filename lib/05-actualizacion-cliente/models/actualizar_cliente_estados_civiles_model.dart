import 'dart:convert';

class ModelActualizarClienteEstadosCiviles {
  final bool? success;
  final List<ModelActualizarClienteEstadosCivilesData>? data;
  final String? message;

  ModelActualizarClienteEstadosCiviles({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteEstadosCiviles.fromRawJson(String str) =>
      ModelActualizarClienteEstadosCiviles.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEstadosCiviles.fromJson(Map<String, dynamic> json) => ModelActualizarClienteEstadosCiviles(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteEstadosCivilesData>.from(
                json["data"]!.map((x) => ModelActualizarClienteEstadosCivilesData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteEstadosCivilesData {
  final String? ecEstadoCivil;
  final String? ecNombre;

  ModelActualizarClienteEstadosCivilesData({
    this.ecEstadoCivil,
    this.ecNombre,
  });

  factory ModelActualizarClienteEstadosCivilesData.fromRawJson(String str) =>
      ModelActualizarClienteEstadosCivilesData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEstadosCivilesData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteEstadosCivilesData(
        ecEstadoCivil: json["ec_estado_civil"],
        ecNombre: json["ec_nombre"],
      );

  Map<String, dynamic> toJson() => {
        "ec_estado_civil": ecEstadoCivil,
        "ec_nombre": ecNombre,
      };
}
