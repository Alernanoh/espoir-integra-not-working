import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:intl/intl.dart';

class IsarSubidaDocumentosWidget extends ConsumerWidget {
  const IsarSubidaDocumentosWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerIsar = ref.watch(grupalSubDocIsarProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: providerIsar.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  for (var item in providerIsar.grupos)
                    Card(
                      child: ListTile(
                        iconColor: colorEspoirAzul,
                        leading: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.rightToBracket,
                          ),
                          onPressed: () {
                            ref.read(grupalSubDocGrupoProvider.notifier).onChangeData(
                                  idIsar: item.id,
                                  infoGrupo: [item.infoGrupo],
                                  latitud: item.latitud,
                                  longitud: item.longitud,
                                  documentos: item.documentos,
                                  imagenes: item.imagenes,
                                  agregar: item.agregar,
                                  cambiar: item.cambiar,
                                );
                            if (item.infoGrupo.estadoDoc == 'H') {
                              context.push('/${GrupalSubidaDocumentosInfoScreen.nameScreen}');
                            } else if (item.infoGrupo.estadoDoc == 'R') {
                              context.push('/${GrupalSubidaDocumentosInfoReprocesadosScreen.nameScreen}');
                            }
                          },
                        ),
                        title: Text(
                          item.infoGrupo.grpNombre ?? '',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('${item.infoGrupo.creCredito} \nFecha: ${DateFormat.yMMMMd().format(item.fecha)}'),
                        isThreeLine: true,
                        trailing: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.trash,
                            color: Colors.red,
                          ),
                          onPressed: () async {
                            SubidaDocumentosIsar().deleteSubidaDocumentosByID(item.id);
                            final dataSubidaDocumentos = await SubidaDocumentosIsar().getAllSubidaDocumentos();
                            ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: dataSubidaDocumentos);
                          },
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nota: Los datos guardados en el dispositivo tienen una duración de 24 horas como máximo',
                  ),
                ],
              ),
      ),
    );
  }
}
