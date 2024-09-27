import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

typedef InfoDataSubidaDocumentos = (int idDocumento, int idCambio);

class GrupalSubidaDocumentosImagenScreen extends ConsumerWidget {
  static const nameScreen = '${GrupalSubidaDocumentosScreen.nameScreen}/GrupalSubidaDocumentosImagenScreen';
  const GrupalSubidaDocumentosImagenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (idDocumento, idCambio) = GoRouterState.of(context).extra as InfoDataSubidaDocumentos;
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);
    String tipoDoc = '';

    for (var item in providerGrupo.documentos) {
      if (idDocumento == item.tddId) tipoDoc = item.tddNombreDocumento ?? '';
    }

    Future<void> obtenerImagen(bool camara, int idDocumento, int idCambio) async {
      final XFile? imagen;
      if (camara) {
        imagen = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 75, maxWidth: 1600);
      } else {
        imagen = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 75, maxWidth: 1600);
      }

      if (imagen == null) return;
      final bytes = await imagen.readAsBytes();
      final strFoto = base64Encode(bytes);
      final String microSeg = '${DateTime.now().microsecondsSinceEpoch}';

      await SubidaDocumentosIsar().insertFotoBase64(
        id: providerGrupo.idIsar,
        tipo: idDocumento,
        strFoto: strFoto,
        microSeg: microSeg,
      );
      ref.read(grupalSubDocGrupoProvider.notifier).onAddImagen(ModelGrupalTiposDocumentosImagenData(
            imagen: strFoto,
            tipo: idDocumento,
            microSeg: microSeg,
            cambio: idCambio,
          ));
      final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
      ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
    }

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: Text(tipoDoc),
        bottom: const InternetStatusWidget(),
      ),
      body: CustomScrollView(
        slivers: [
          GrupalSubidaDocumentosCardImagenesWidget(idDocumento: idDocumento),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.camera),
            onPressed: () => obtenerImagen(true, idDocumento, idCambio),
          ),
          const SizedBox(height: 5),
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.fileImage),
            onPressed: () => obtenerImagen(false, idDocumento, idCambio),
          ),
        ],
      ),
    );
  }
}
