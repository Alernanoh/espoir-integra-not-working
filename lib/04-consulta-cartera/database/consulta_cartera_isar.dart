import 'package:integra_espoir/04-consulta-cartera/database/isar_consulta_cartera.dart';
import 'package:isar/isar.dart';

class ConsultaCarteraIsar {
  late Future<Isar> dbConsultaCartera;

  ConsultaCarteraIsar() {
    dbConsultaCartera = openDB();
  }

  Future<Isar> openDB() async {
    return Future.value(Isar.getInstance('DatabaseIntegra'));
  }

  Future<void> insertDatabaseConsultaCartera({
    required String cedula,
    required DateTime fecha,
    required String cliente,
    required List<ModelConsultaCarteraData> data,
    required List<String> transaccionesOne,
    required List<String> transaccionesTwo,
    required List<String> transaccionesThree,
    required List<String> deudasOne,
    required List<String> deudasTwo,
    required List<String> deudasThree,
    required List<String> informacionOne,
    required List<String> informacionTwo,
    required List<String> informacionThree,
    required List<String> valoresOne,
    required List<String> valoresTwo,
    required List<String> valoresThree,
  }) async {
    final isar = await dbConsultaCartera;
    final dataConsultaCartera = IsarConsultaCartera(
      cedula: cedula,
      cliente: cliente,
      fecha: fecha,
      data: data,
      transaccionesOne: transaccionesOne,
      transaccionesTwo: transaccionesTwo,
      transaccionesThree: transaccionesThree,
      deudasOne: deudasOne,
      deudasTwo: deudasTwo,
      deudasThree: deudasThree,
      informacionOne: informacionOne,
      informacionTwo: informacionTwo,
      informacionThree: informacionThree,
      valoresOne: valoresOne,
      valoresTwo: valoresTwo,
      valoresThree: valoresThree,
    );

    await isar.writeTxn(() async {
      await isar.isarConsultaCarteras.filter().cedulaEqualTo(cedula).deleteAll();
      await isar.isarConsultaCarteras.put(dataConsultaCartera);
    });
  }

  Future<List<IsarConsultaCartera>> getAllConsultaCartera() async {
    final isar = await dbConsultaCartera;
    await isar.writeTxn(() async {
      final ayer = DateTime.now().subtract(const Duration(days: 1));
      await isar.isarConsultaCarteras.filter().fechaLessThan(ayer).deleteAll();
    });
    return isar.isarConsultaCarteras.where().findAll();
  }

  Future<void> deleteConsultaCarteraByID(int id) async {
    final isar = await dbConsultaCartera;
    await isar.writeTxn(() async {
      await isar.isarConsultaCarteras.delete(id);
    });
  }
}
