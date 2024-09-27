import 'package:isar/isar.dart';
import 'dart:convert';
part '../models/grupal_grupos_model.dart';
part '../models/grupal_tipos_documentos_model.dart';
part '../models/grupal_tipos_documentos_imagen_model.dart';
part '../models/grupal_reprocesados_agregar_model.dart';
part '../models/grupal_reprocesados_cambiar_model.dart';

//ISAR
part 'isar_subida_documentos.g.dart';

@collection
class IsarGrupalSubidaDocumentos {
  Id id = Isar.autoIncrement;
  DateTime fecha;
  ModelGrupalGruposData infoGrupo;
  List<ModelGrupalTiposDocumentosData> documentos;
  List<ModelGrupalTiposDocumentosImagenData> imagenes;
  double latitud;
  double longitud;
  List<ModelGrupalReproAgregarData> agregar;
  List<ModelGrupalReproCambiarData> cambiar;

  IsarGrupalSubidaDocumentos({
    required this.fecha,
    required this.infoGrupo,
    required this.documentos,
    required this.imagenes,
    required this.latitud,
    required this.longitud,
    required this.agregar,
    required this.cambiar,
  });
}
