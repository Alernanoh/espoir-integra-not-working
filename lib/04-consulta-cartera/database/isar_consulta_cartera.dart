import 'dart:convert';
import 'package:isar/isar.dart';
part '../models/consulta_cartera_model.dart';

//ISAR
part 'isar_consulta_cartera.g.dart';

@collection
class IsarConsultaCartera {
  Id id = Isar.autoIncrement;
  final String cedula;
  final String cliente;
  final DateTime fecha;
  final List<ModelConsultaCarteraData> data;
  final List<String> transaccionesOne;
  final List<String> transaccionesTwo;
  final List<String> transaccionesThree;
  final List<String> deudasOne;
  final List<String> deudasTwo;
  final List<String> deudasThree;
  final List<String> informacionOne;
  final List<String> informacionTwo;
  final List<String> informacionThree;
  final List<String> valoresOne;
  final List<String> valoresTwo;
  final List<String> valoresThree;

  IsarConsultaCartera({
    required this.cedula,
    required this.cliente,
    required this.fecha,
    required this.data,
    required this.transaccionesOne,
    required this.transaccionesTwo,
    required this.transaccionesThree,
    required this.deudasOne,
    required this.deudasTwo,
    required this.deudasThree,
    required this.informacionOne,
    required this.informacionTwo,
    required this.informacionThree,
    required this.valoresOne,
    required this.valoresTwo,
    required this.valoresThree,
  });
}
