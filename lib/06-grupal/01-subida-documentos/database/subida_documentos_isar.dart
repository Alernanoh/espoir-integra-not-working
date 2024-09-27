import 'package:geolocator/geolocator.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:isar/isar.dart';

class SubidaDocumentosIsar {
  late Future<Isar> dbSubidaDocumentos;

  SubidaDocumentosIsar() {
    dbSubidaDocumentos = openDB();
  }

  Future<Isar> openDB() async {
    return Future.value(Isar.getInstance('DatabaseIntegra'));
  }

  Future<void> insertDatabaseSubidaDocumentos({
    required DateTime fecha,
    required ModelGrupalGruposData grupo,
    required List<ModelGrupalTiposDocumentosData> documentos,
    required List<ModelGrupalReproAgregarData> agregar,
    required List<ModelGrupalReproCambiarData> cambiar,
  }) async {
    final isar = await dbSubidaDocumentos;
    final dataSubidaDocumentos = IsarGrupalSubidaDocumentos(
      fecha: fecha,
      infoGrupo: grupo,
      documentos: documentos,
      imagenes: [],
      latitud: 0,
      longitud: 0,
      agregar: agregar,
      cambiar: cambiar,
    );
    final list = await isar.isarGrupalSubidaDocumentos.where().findAll();
    await isar.writeTxn(() async {
      bool op = false;
      for (var item in list) {
        if (item.infoGrupo.grpNombre ==
            dataSubidaDocumentos.infoGrupo.grpNombre) op = true;
      }
      if (!op) {
        await isar.isarGrupalSubidaDocumentos.put(dataSubidaDocumentos);
      }
    });
  }

  Future<List<IsarGrupalSubidaDocumentos>> getAllSubidaDocumentos() async {
    final isar = await dbSubidaDocumentos;
    await isar.writeTxn(() async {
      final ayer = DateTime.now().subtract(const Duration(days: 1));
      await isar.isarGrupalSubidaDocumentos
          .filter()
          .fechaLessThan(ayer)
          .deleteAll();
    });
    return isar.isarGrupalSubidaDocumentos.where().findAll();
  }

  Future<void> deleteSubidaDocumentosByID(int id) async {
    final isar = await dbSubidaDocumentos;
    await isar.writeTxn(() async {
      await isar.isarGrupalSubidaDocumentos.delete(id);
    });
  }

  Future<void> insertCoordenas(int id, Position coordenadas) async {
    final isar = await dbSubidaDocumentos;
    await isar.writeTxn(() async {
      final doc = await isar.isarGrupalSubidaDocumentos.get(id);
      if (doc == null) return;
      doc.latitud = coordenadas.latitude;
      doc.longitud = coordenadas.longitude;
      await isar.isarGrupalSubidaDocumentos.put(doc);
    });
  }

  Future<void> insertFotoBase64({
    required int id,
    required int tipo,
    required String strFoto,
    required String microSeg,
  }) async {
    final isar = await dbSubidaDocumentos;
    final dataFoto = ModelGrupalTiposDocumentosImagenData(
      imagen: strFoto,
      tipo: tipo,
      microSeg: microSeg,
      cambio: 0,
    );

    await isar.writeTxn(() async {
      final doc = await isar.isarGrupalSubidaDocumentos.get(id);
      if (doc == null) return;
      doc.imagenes = [...doc.imagenes, dataFoto];
      await isar.isarGrupalSubidaDocumentos.put(doc);
    });
  }

  Future<void> deleteFoto(int id, String pos) async {
    final isar = await dbSubidaDocumentos;
    await isar.writeTxn(() async {
      final doc = await isar.isarGrupalSubidaDocumentos.get(id);
      if (doc == null) return;
      final op = [...doc.imagenes];
      op.removeWhere((element) => element.microSeg == pos);
      doc.imagenes = [...op];
      await isar.isarGrupalSubidaDocumentos.put(doc);
    });
  }

  Future<void> insertFotoBase64Cambio({
    required int id,
    required int tipo,
    required String strFoto,
    required String microSeg,
    required int cambio,
  }) async {
    final isar = await dbSubidaDocumentos;
    final dataFoto = ModelGrupalTiposDocumentosImagenData(
      imagen: strFoto,
      tipo: tipo,
      microSeg: microSeg,
      cambio: cambio,
    );

    await isar.writeTxn(() async {
      final doc = await isar.isarGrupalSubidaDocumentos.get(id);
      if (doc == null) return;
      final op = [...doc.imagenes.where((element) => element.cambio != cambio)];
      doc.imagenes = [...op, dataFoto];
      await isar.isarGrupalSubidaDocumentos.put(doc);
    });
  }

  Future<List<ModelGrupalTiposDocumentosImagenData>>
      getAllSubidaDocumentosCambio(int id) async {
    final isar = await dbSubidaDocumentos;
    final doc = await isar.isarGrupalSubidaDocumentos.get(id);
    if (doc == null) return [];
    final op = [...doc.imagenes.where((element) => element.cambio != 0)];
    return op;
  }
}
