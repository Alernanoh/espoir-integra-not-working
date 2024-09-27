import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';

class GrupalSubidaDocumentosCardImagenesWidget extends ConsumerWidget {
  final int idDocumento;

  const GrupalSubidaDocumentosCardImagenesWidget({
    super.key,
    required this.idDocumento,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);

    return SliverPadding(
      padding: const EdgeInsets.all(0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        delegate: SliverChildListDelegate([
          for (var item in providerGrupo.imagenes)
            if (item.tipo == idDocumento && item.cambio == 0)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.memory(
                        base64Decode(item.imagen ?? ''),
                        fit: BoxFit.cover,
                        height: 125,
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () async {
                        await SubidaDocumentosIsar().deleteFoto(providerGrupo.idIsar, item.microSeg ?? '');
                        ref.read(grupalSubDocGrupoProvider.notifier).onDeleteImagen(item.microSeg ?? '');
                        final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
                        ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
                      },
                      child: const Text(
                        'Eliminar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
        ]),
      ),
    );
  }
}
