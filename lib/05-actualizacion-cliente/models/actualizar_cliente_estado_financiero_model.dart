import 'dart:convert';

class ModelActualizarClienteEstadoFinanciero {
  final bool? success;
  final List<ModelActualizarClienteEstadoFinancieroData>? data;
  final String? message;

  ModelActualizarClienteEstadoFinanciero({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteEstadoFinanciero.fromRawJson(String str) =>
      ModelActualizarClienteEstadoFinanciero.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEstadoFinanciero.fromJson(Map<String, dynamic> json) => ModelActualizarClienteEstadoFinanciero(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteEstadoFinancieroData>.from(
                json["data"]!.map((x) => ModelActualizarClienteEstadoFinancieroData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteEstadoFinancieroData {
  final DateTime? fecha;
  final double? totalActivos;
  final double? totalPasivos;
  final double? totalIngresosMensuales;
  final double? totalGastoMensuales;

  ModelActualizarClienteEstadoFinancieroData({
    this.fecha,
    this.totalActivos,
    this.totalPasivos,
    this.totalIngresosMensuales,
    this.totalGastoMensuales,
  });

  factory ModelActualizarClienteEstadoFinancieroData.fromRawJson(String str) =>
      ModelActualizarClienteEstadoFinancieroData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteEstadoFinancieroData.fromJson(Map<String, dynamic> json) =>
      ModelActualizarClienteEstadoFinancieroData(
        fecha: json["fecha"] == null ? null : DateTime.parse(json["fecha"]),
        totalActivos: json["total_activos"]?.toDouble(),
        totalPasivos: json["total_pasivos"]?.toDouble(),
        totalIngresosMensuales: json["total_ingresos_mensuales"]?.toDouble(),
        totalGastoMensuales: json["total_gasto_mensuales"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "fecha":
            "${fecha!.year.toString().padLeft(4, '0')}-${fecha!.month.toString().padLeft(2, '0')}-${fecha!.day.toString().padLeft(2, '0')}",
        "total_activos": totalActivos,
        "total_pasivos": totalPasivos,
        "total_ingresos_mensuales": totalIngresosMensuales,
        "total_gasto_mensuales": totalGastoMensuales,
      };
}
