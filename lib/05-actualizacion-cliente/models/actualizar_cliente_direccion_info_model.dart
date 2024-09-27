import 'dart:convert';

class ModelActualizarClienteDireccion {
  final bool? success;
  final List<ModelActualizarClienteDireccionData>? data;
  final String? message;

  ModelActualizarClienteDireccion({
    this.success,
    this.data,
    this.message,
  });

  factory ModelActualizarClienteDireccion.fromRawJson(String str) => ModelActualizarClienteDireccion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDireccion.fromJson(Map<String, dynamic> json) => ModelActualizarClienteDireccion(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<ModelActualizarClienteDireccionData>.from(
                json["data"]!.map((x) => ModelActualizarClienteDireccionData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelActualizarClienteDireccionData {
  final String? tipoDireccion;
  final String? calle;
  final String? numero;
  final String? interseccion;
  final String? sector;
  final String? referencia;
  final int? provincia;
  final int? canton;
  final int? parroquia;
  final int? sec;
  final String? estado;
  final String? provinciaNombre;
  final String? cantonNombre;
  final String? parroquiaNombre;
  final dynamic coordGoogleX;
  final dynamic coordGoogleY;
  final DateTime? fecha;

  ModelActualizarClienteDireccionData({
    this.tipoDireccion,
    this.calle,
    this.numero,
    this.interseccion,
    this.sector,
    this.referencia,
    this.provincia,
    this.canton,
    this.parroquia,
    this.sec,
    this.estado,
    this.provinciaNombre,
    this.cantonNombre,
    this.parroquiaNombre,
    this.coordGoogleX,
    this.coordGoogleY,
    this.fecha,
  });

  factory ModelActualizarClienteDireccionData.fromRawJson(String str) =>
      ModelActualizarClienteDireccionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelActualizarClienteDireccionData.fromJson(Map<String, dynamic> json) => ModelActualizarClienteDireccionData(
        tipoDireccion: json["tipo_direccion"],
        calle: json["calle"],
        numero: json["numero"],
        interseccion: json["interseccion"],
        sector: json["sector"],
        referencia: json["referencia"],
        provincia: json["provincia"],
        canton: json["canton"],
        parroquia: json["parroquia"],
        sec: json["sec"],
        estado: json["estado"],
        provinciaNombre: json["provincia_nombre"],
        cantonNombre: json["canton_nombre"],
        parroquiaNombre: json["parroquia_nombre"],
        coordGoogleX: json["coord_google_x"],
        coordGoogleY: json["coord_google_y"],
        fecha: json["fecha"] == null ? null : DateTime.parse(json["fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "tipo_direccion": tipoDireccion,
        "calle": calle,
        "numero": numero,
        "interseccion": interseccion,
        "sector": sector,
        "referencia": referencia,
        "provincia": provincia,
        "canton": canton,
        "parroquia": parroquia,
        "sec": sec,
        "estado": estado,
        "provincia_nombre": provinciaNombre,
        "canton_nombre": cantonNombre,
        "parroquia_nombre": parroquiaNombre,
        "coord_google_x": coordGoogleX,
        "coord_google_y": coordGoogleY,
        "fecha": fecha?.toIso8601String(),
      };
}
