import 'dart:convert';

class ModelActualizarClienteCuentarecuperacion {
  final bool? success;
  final List<ModelActualizarClienteCuentarecuperacionData>? data;
  final String? message;

  ModelActualizarClienteCuentarecuperacion({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteCuentarecuperacion.fromRawJson(String str) =>
      ModelActualizarClienteCuentarecuperacion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteCuentarecuperacion.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteCuentarecuperacion(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteCuentarecuperacionData>.from(
                json["data"]!.map((x) => ModelActualizarClienteCuentarecuperacionData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteCuentarecuperacionData {
  final int? entidadFinanciera;
  final String? tipoCuenta;
  final String? numeroCuenta;
  final String? entidadFinancieraDescrip;
  final String? tipoCuentaDescrip;
  final DateTime? modificaFecha;

  ModelActualizarClienteCuentarecuperacionData({
    this.entidadFinanciera,
    this.tipoCuenta,
    this.numeroCuenta,
    this.entidadFinancieraDescrip,
    this.tipoCuentaDescrip,
    this.modificaFecha,
  });

  factory ModelActualizarClienteCuentarecuperacionData.fromRawJson(String str) =>
      ModelActualizarClienteCuentarecuperacionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteCuentarecuperacionData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteCuentarecuperacionData(
        entidadFinanciera: json["entidad_financiera"],
        tipoCuenta: json["tipo_cuenta"],
        numeroCuenta: json["numero_cuenta"],
        entidadFinancieraDescrip: json["entidad_financiera_descrip"],
        tipoCuentaDescrip: json["tipo_cuenta_descrip"],
        modificaFecha: json["modifica_fecha"] == null ? null : DateTime.parse(json["modifica_fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "entidad_financiera": entidadFinanciera,
        "tipo_cuenta": tipoCuenta,
        "numero_cuenta": numeroCuenta,
        "entidad_financiera_descrip": entidadFinancieraDescrip,
        "tipo_cuenta_descrip": tipoCuentaDescrip,
        "modifica_fecha": modificaFecha?.toIso8601String(),
      };
}
