import 'package:integra_espoir/02-home/database/isar_drawer.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/04-consulta-cartera/database/isar_consulta_cartera.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/config/database/isar_ubicacion.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<Isar> openAllDB() async {
  final dir = await getApplicationDocumentsDirectory();

  return await Isar.open(
    [
      IsarDrawerSchema,
      IsarBuroRcoSchema,
      IsarConsultaCarteraSchema,
      IsarUbicacionSchema,
      IsarGrupalSubidaDocumentosSchema,
    ],
    directory: dir.path,
    name: 'DatabaseIntegra',
  );
}
