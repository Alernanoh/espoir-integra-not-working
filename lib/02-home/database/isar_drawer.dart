import 'dart:convert';
import 'package:isar/isar.dart';

//RCO
part '../models/drawer_model.dart';

//ISAR
part 'isar_drawer.g.dart';

@collection
class IsarDrawer {
  Id id = Isar.autoIncrement;
  final DateTime fecha;
  final List<ModelDrawerData> drawer;

  IsarDrawer({
    required this.fecha,
    required this.drawer,
  });
}
