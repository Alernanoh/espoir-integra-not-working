import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_imagenes_cambio_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class GrupalSubidaDocumentosImagenCambioScreen extends ConsumerWidget {
  static const nameScreen =
      '${GrupalSubidaDocumentosScreen.nameScreen}/GrupalSubidaDocumentosImagenCambioScreen';
  const GrupalSubidaDocumentosImagenCambioScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerImagenes = ref.watch(grupalSubDocImagenCambioProvider);
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);

    Future<void> obtenerImagen(
        bool camara, int idDocumento, int idCambio) async {
      final XFile? imagen;
      if (camara) {
        imagen = await ImagePicker().pickImage(
            source: ImageSource.camera, imageQuality: 75, maxWidth: 1600);
      } else {
        imagen = await ImagePicker().pickImage(
            source: ImageSource.gallery, imageQuality: 75, maxWidth: 1600);
      }

      if (imagen == null) return;
      final bytes = await imagen.readAsBytes();
      final strFoto = base64Encode(bytes);
      final String microSeg = '${DateTime.now().microsecondsSinceEpoch}';

      await SubidaDocumentosIsar().insertFotoBase64Cambio(
        id: providerImagenes.idIsar,
        tipo: idDocumento,
        strFoto: strFoto,
        microSeg: microSeg,
        cambio: idCambio,
      );
      ref
          .read(grupalSubDocImagenCambioProvider.notifier)
          .onSetImagenCambio(providerImagenes.idIsar);
      ref.read(grupalSubDocGrupoProvider.notifier).onAddImagenCambio(
            ModelGrupalTiposDocumentosImagenData(
              imagen: strFoto,
              tipo: idDocumento,
              microSeg: microSeg,
              cambio: idCambio,
            ),
          );
      final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
      ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
    }

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Cambio de imagenes'),
        bottom: const InternetStatusWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in providerImagenes.base64Image)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tipo de documentos "${ref
                          .read(grupalSubDocImagenCambioProvider.notifier)
                          .onGetTipoDocumento(
                              item.tipo, providerGrupo.documentos)}"', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),

                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(2),
                          2: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Column(
                                  children: [
                                    const Text('Antigua'),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.memory(
                                        base64Decode(item.path),
                                        fit: BoxFit.cover,
                                        height: 125,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TableCell(
                                child: Column(
                                  children: [
                                    const Text('Nueva'),
                                    if (ref
                                            .read(
                                                grupalSubDocImagenCambioProvider
                                                    .notifier)
                                            .onGetIsarImage(item.cambio) !=
                                        '')
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.memory(
                                          base64Decode(ref
                                              .read(
                                                  grupalSubDocImagenCambioProvider
                                                      .notifier)
                                              .onGetIsarImage(item.cambio)),
                                          fit: BoxFit.cover,
                                          height: 125,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: null,
                                      child:
                                          const Icon(FontAwesomeIcons.camera),
                                      onPressed: () => obtenerImagen(
                                          true, item.tipo, item.cambio),
                                    ),
                                    const SizedBox(height: 10),
                                    FloatingActionButton(
                                      heroTag: null,
                                      child: const Icon(
                                          FontAwesomeIcons.fileImage),
                                      onPressed: () => obtenerImagen(
                                          false, item.tipo, item.cambio),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Observación:',
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        item.observacion ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
