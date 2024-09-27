import 'package:integra_espoir/02-home/database/isar_drawer.dart';
import 'package:isar/isar.dart';

class DrawerIsar {
  late Future<Isar> dbDrawer;

  DrawerIsar() {
    dbDrawer = openDB();
  }

  Future<Isar> openDB() async {
    return Future.value(Isar.getInstance('DatabaseIntegra'));
  }

  Future<void> insertDatabaseDrawer({required List<ModelDrawerData> drawer}) async {
    final isar = await dbDrawer;
    final dataDrawer = IsarDrawer(fecha: DateTime.now(), drawer: drawer);
    await isar.writeTxn(() async {
      await isar.isarDrawers.filter().fechaLessThan(DateTime.now()).deleteAll();
      await isar.isarDrawers.put(dataDrawer);
    });
  }

  Future<List<IsarDrawer>> getAllDrawer() async {
    final isar = await dbDrawer;
    return isar.isarDrawers.where().findAll();
  }

  Future<void> deleteDrawer() async {
    final isar = await dbDrawer;
    await isar.writeTxn(() async {
      await isar.isarDrawers.filter().fechaLessThan(DateTime.now()).deleteAll();
    });
  }
}
