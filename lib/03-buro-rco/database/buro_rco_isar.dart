import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:isar/isar.dart';

class BuroRcoIsar {
  late Future<Isar> dbBuroRco;

  BuroRcoIsar() {
    dbBuroRco = openDB();
  }

  Future<Isar> openDB() async {
    return Future.value(Isar.getInstance('DatabaseIntegra'));
  }

  Future<void> insertDatabaseRco({
    required String cedula,
    required DateTime fecha,
    required String cliente,
    required List<ModelRcoHeadData> rcoHead,
    required List<ModelRcoInfoData> rcoInfo,
    required List<ModelBuroAvalData> buroAval,
    required List<ModelBuroHeadData> buroHead,
    required List<ModelBuroResumenData> buroResumen,
    required List<ModelBuroIfisData> buroIfis,
    required List<ModelBuroCuentasCorrientesData> buroCuentasCorrientes,
    required List<ModelBuroGraficoData> buroGrafico,
  }) async {
    final isar = await dbBuroRco;
    final dataBuroRco = IsarBuroRco(
      cedula: cedula,
      cliente: cliente,
      fecha: fecha,
      rcoHead: rcoHead,
      rcoInfo: rcoInfo,
      buroAval: buroAval,
      buroHead: buroHead,
      buroResumen: buroResumen,
      buroIfis: buroIfis,
      buroCuentasCorrientes: buroCuentasCorrientes,
      buroGrafico: buroGrafico,
    );

    await isar.writeTxn(() async {
      await isar.isarBuroRcos.filter().cedulaEqualTo(cedula).deleteAll();
      await isar.isarBuroRcos.put(dataBuroRco);
    });
  }

  Future<List<IsarBuroRco>> getAllBuroRco() async {
    final isar = await dbBuroRco;
    await isar.writeTxn(() async {
      final ayer = DateTime.now().subtract(const Duration(days: 1));
      await isar.isarBuroRcos.filter().fechaLessThan(ayer).deleteAll();
    });
    return isar.isarBuroRcos.where().findAll();
  }

  Future<void> deleteRcoByID(int id) async {
    final isar = await dbBuroRco;
    await isar.writeTxn(() async {
      await isar.isarBuroRcos.delete(id);
    });
  }
}
