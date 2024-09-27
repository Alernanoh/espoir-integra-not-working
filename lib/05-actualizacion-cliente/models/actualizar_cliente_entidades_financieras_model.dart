import 'dart:convert';

class ModelActualizarClienteEntidadesFinancieras {
  final bool? success;
  final List<ModelActualizarClienteEntidadesFinancierasData>? data;
  final String? message;

  ModelActualizarClienteEntidadesFinancieras({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteEntidadesFinancieras.fromRawJson(String str) =>
      ModelActualizarClienteEntidadesFinancieras.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEntidadesFinancieras.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteEntidadesFinancieras(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteEntidadesFinancierasData>.from(
                json["data"]!.map((x) => ModelActualizarClienteEntidadesFinancierasData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteEntidadesFinancierasData {
  final int? efiEntidadFinanciera;
  final String? efiDescripcion;

  ModelActualizarClienteEntidadesFinancierasData({
    this.efiEntidadFinanciera,
    this.efiDescripcion,
  });

  factory ModelActualizarClienteEntidadesFinancierasData.fromRawJson(String str) =>
      ModelActualizarClienteEntidadesFinancierasData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEntidadesFinancierasData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteEntidadesFinancierasData(
        efiEntidadFinanciera: json["efi_entidad_financiera"],
        efiDescripcion: json["efi_descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "efi_entidad_financiera": efiEntidadFinanciera,
        "efi_descripcion": efiDescripcion,
      };
}
