import 'dart:convert';

class ModelActualizarClienteActividadEconomica {
  final bool? success;
  final List<ModelActualizarClienteActividadEconomicaData>? data;
  final String? message;

  ModelActualizarClienteActividadEconomica({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteActividadEconomica.fromRawJson(String str) =>
      ModelActualizarClienteActividadEconomica.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteActividadEconomica.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteActividadEconomica(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteActividadEconomicaData>.from(
                json["data"]!.map((x) => ModelActualizarClienteActividadEconomicaData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteActividadEconomicaData {
  final int? actividadEcon;
  final String? actividadEconDescrip;
  final String? actEconCodigoCiu;
  final DateTime? modificaFecha;

  ModelActualizarClienteActividadEconomicaData({
    this.actividadEcon,
    this.actividadEconDescrip,
    this.actEconCodigoCiu,
    this.modificaFecha,
  });

  factory ModelActualizarClienteActividadEconomicaData.fromRawJson(String str) =>
      ModelActualizarClienteActividadEconomicaData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteActividadEconomicaData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteActividadEconomicaData(
        actividadEcon: json["actividad_econ"],
        actividadEconDescrip: json["actividad_econ_descrip"],
        actEconCodigoCiu: json["act_econ_codigo_ciu"],
        modificaFecha: json["modifica_fecha"] == null ? null : DateTime.parse(json["modifica_fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "actividad_econ": actividadEcon,
        "actividad_econ_descrip": actividadEconDescrip,
        "act_econ_codigo_ciu": actEconCodigoCiu,
        "modifica_fecha": modificaFecha?.toIso8601String(),
      };
}
