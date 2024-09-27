import 'package:isar/isar.dart';
import 'dart:convert';
part '../models/provincias_model.dart';
part '../models/cantones_model.dart';
part '../models/parroquias_model.dart';

//ISAR
part 'isar_ubicacion.g.dart';

@collection
class IsarUbicacion {
  Id id = Isar.autoIncrement;
  final DateTime fecha;
  final List<ModelProvinciasData> provincias;
  final List<ModelCantonesData> cantones;
  final List<ModelParroquiasData> parroquias;

  IsarUbicacion({
    required this.fecha,
    required this.provincias,
    required this.cantones,
    required this.parroquias,
  });
}
