import 'package:integra_espoir/config/database/isar_ubicacion.dart';
import 'package:isar/isar.dart';

class UbicacionIsar {
  late Future<Isar> dbUbicacion;

  UbicacionIsar() {
    dbUbicacion = openDB();
  }

  Future<Isar> openDB() async {
    return Future.value(Isar.getInstance('DatabaseIntegra'));
  }

  Future<void> insertDatabaseUbicacion({
    required DateTime fecha,
    required List<ModelProvinciasData> provincias,
    required List<ModelCantonesData> cantones,
    required List<ModelParroquiasData> parroquias,
  }) async {
    final isarUbicacion = await dbUbicacion;
    final dataUbicacion = IsarUbicacion(
      fecha: fecha,
      provincias: provincias,
      cantones: cantones,
      parroquias: parroquias,
    );

    await isarUbicacion.writeTxn(() async {
      await isarUbicacion.isarUbicacions.filter().fechaLessThan(DateTime.now()).deleteAll();
      await isarUbicacion.isarUbicacions.put(dataUbicacion);
    });
  }

  Future<List<IsarUbicacion>> getAllUbicacion() async {
    final isarUbicacion = await dbUbicacion;
    return isarUbicacion.isarUbicacions.where().findAll();
  }
}
