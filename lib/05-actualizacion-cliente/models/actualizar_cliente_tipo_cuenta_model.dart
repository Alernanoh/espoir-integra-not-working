import 'dart:convert';

class ModelActualizarClienteTipoCuenta {
  final bool? success;
  final List<ModelActualizarClienteTipoCuentaData>? data;
  final String? message;

  ModelActualizarClienteTipoCuenta({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteTipoCuenta.fromRawJson(String str) => ModelActualizarClienteTipoCuenta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteTipoCuenta.fromJson(Map<String, dynamic> json) => ModelActualizarClienteTipoCuenta(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteTipoCuentaData>.from(
                json["data"]!.map((x) => ModelActualizarClienteTipoCuentaData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteTipoCuentaData {
  final String? tcuTipoCuenta;
  final String? tcuDescripcion;

  ModelActualizarClienteTipoCuentaData({
    this.tcuTipoCuenta,
    this.tcuDescripcion,
  });

  factory ModelActualizarClienteTipoCuentaData.fromRawJson(String str) =>
      ModelActualizarClienteTipoCuentaData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteTipoCuentaData.fromJson(Map<String, dynamic> json) => ModelActualizarClienteTipoCuentaData(
        tcuTipoCuenta: json["tcu_tipo_cuenta"],
        tcuDescripcion: json["tcu_descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "tcu_tipo_cuenta": tcuTipoCuenta,
        "tcu_descripcion": tcuDescripcion,
      };
}
