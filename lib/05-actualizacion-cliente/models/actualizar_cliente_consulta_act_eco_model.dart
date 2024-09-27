import 'dart:convert';

class ModelActualizarClienteConsultaActividadEconomica {
  final bool? success;
  final List<ModelActualizarClienteConsultaActividadEconomicaData>? data;
  final String? message;

  ModelActualizarClienteConsultaActividadEconomica({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteConsultaActividadEconomica.fromRawJson(String str) =>
      ModelActualizarClienteConsultaActividadEconomica.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteConsultaActividadEconomica.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteConsultaActividadEconomica(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteConsultaActividadEconomicaData>.from(
                json["data"]!.map((x) => ModelActualizarClienteConsultaActividadEconomicaData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteConsultaActividadEconomicaData {
  final String? actividad;
  final int? actividadId;
  final String? actividadCodigoCiu;

  ModelActualizarClienteConsultaActividadEconomicaData({
    this.actividad,
    this.actividadId,
    this.actividadCodigoCiu,
  });

  factory ModelActualizarClienteConsultaActividadEconomicaData.fromRawJson(String str) =>
      ModelActualizarClienteConsultaActividadEconomicaData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteConsultaActividadEconomicaData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteConsultaActividadEconomicaData(
        actividad: json["actividad"],
        actividadId: json["actividad_id"],
        actividadCodigoCiu: json["actividad_codigo_ciu"],
      );

  Map<String, dynamic> toJson() => {
        "actividad": actividad,
        "actividad_id": actividadId,
        "actividad_codigo_ciu": actividadCodigoCiu,
      };
}
