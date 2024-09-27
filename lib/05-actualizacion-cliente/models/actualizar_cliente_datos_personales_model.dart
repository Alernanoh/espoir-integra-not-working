import 'dart:convert';

class ModelActualizarClienteDatosPersonales {
  final bool? success;
  final List<ModelActualizarClienteDatosPersonalesData>? data;
  final String? message;

  ModelActualizarClienteDatosPersonales({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteDatosPersonales.fromRawJson(String str) =>
      ModelActualizarClienteDatosPersonales.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDatosPersonales.fromJson(Map<String, dynamic> json) => ModelActualizarClienteDatosPersonales(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteDatosPersonalesData>.from(
                json["data"]!.map((x) => ModelActualizarClienteDatosPersonalesData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteDatosPersonalesData {
  final DateTime? fechaNacimiento;
  final String? estadoCivil;
  final String? estadoCivilDescrip;
  final DateTime? modificaFecha;

  ModelActualizarClienteDatosPersonalesData({
    this.fechaNacimiento,
    this.estadoCivil,
    this.estadoCivilDescrip,
    this.modificaFecha,
  });

  factory ModelActualizarClienteDatosPersonalesData.fromRawJson(String str) =>
      ModelActualizarClienteDatosPersonalesData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDatosPersonalesData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteDatosPersonalesData(
        fechaNacimiento: json["fecha_nacimiento"] == null ? null : DateTime.parse(json["fecha_nacimiento"]),
        estadoCivil: json["estado_civil"],
        estadoCivilDescrip: json["estado_civil_descrip"],
        modificaFecha: json["modifica_fecha"] == null ? null : DateTime.parse(json["modifica_fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "fecha_nacimiento": fechaNacimiento?.toIso8601String(),
        "estado_civil": estadoCivil,
        "estado_civil_descrip": estadoCivilDescrip,
        "modifica_fecha": modificaFecha?.toIso8601String(),
      };
}
