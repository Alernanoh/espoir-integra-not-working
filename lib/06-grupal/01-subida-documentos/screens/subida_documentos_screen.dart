import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_busqueda_service.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class GrupalSubidaDocumentosScreen extends ConsumerWidget {
  static const nameScreen = '${GrupalScreen.nameScreen}/GrupalSubidaDocumentosScreen';
  const GrupalSubidaDocumentosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerInternet = ref.watch(internetProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Subida de documentos'),
        bottom: const InternetStatusWidget(),
      ),
      body: const IsarSubidaDocumentosWidget(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.arrowsRotate),
            onPressed: () async {
              final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
              ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
            },
          ),
          const SizedBox(height: 5),
          Visibility(
            visible: providerInternet != ConnectivityStatus.isConnected ? false : true,
            child: FloatingActionButton(
              heroTag: null,
              child: const Icon(FontAwesomeIcons.plus),
              onPressed: () {
                _showMyDialog(context);
                ref.read(grupalSubDocBusquedaProvider.notifier).onSearch();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext argContext) async {
    return showDialog(
      barrierDismissible: false,
      context: argContext,
      builder: (context) => Consumer(
        builder: (context, ref, child) {
          final providerSubDoc = ref.watch(grupalSubDocBusquedaProvider);
          final providerInternet = ref.watch(internetProvider);

          return PopScope(
            child: AlertDialog(
              title: Text(
                providerSubDoc.searchGrupos ? 'Buscando información' : 'Seleccione los grupos',
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: colorEspoirAzul),
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              content: providerSubDoc.searchGrupos
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        const Text('REPROCESADOS', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int i = 0; i < providerSubDoc.grupos.length; i++)
                                  if (providerSubDoc.grupos[i].estadoDoc == 'R')
                                    CheckboxListTile(
                                      title: Text('${providerSubDoc.grupos[i].grpNombre}'),
                                      value: providerSubDoc.gruposBool[i],
                                      checkColor: colorEspoirAzul,
                                      activeColor: colorEspoirAzul,
                                      onChanged: (bool? value) {
                                        ref.read(grupalSubDocBusquedaProvider.notifier).onChangeBoolGrupo(i, value ?? true);
                                      },
                                    ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        const Text('HABILITADOS', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int i = 0; i < providerSubDoc.grupos.length; i++)
                                  if (providerSubDoc.grupos[i].estadoDoc == 'H')
                                    CheckboxListTile(
                                      title: Text('${providerSubDoc.grupos[i].grpNombre}'),
                                      value: providerSubDoc.gruposBool[i],
                                      checkColor: colorEspoirAzul,
                                      activeColor: colorEspoirAzul,
                                      onChanged: (bool? value) {
                                        ref.read(grupalSubDocBusquedaProvider.notifier).onChangeBoolGrupo(i, value ?? true);
                                      },
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
              actions: providerSubDoc.searchGrupos
                  ? []
                  : [
                      TextButton(child: const Text('Cerrar'), onPressed: () => context.pop()),
                      TextButton(
                        onPressed: providerInternet != ConnectivityStatus.isConnected
                            ? null
                            : () async {
                                for (int i = 0; i < providerSubDoc.gruposBool.length; i++) {
                                  if (providerSubDoc.gruposBool[i]) {
                                    List<ModelGrupalReproAgregarData> agregar = [];
                                    List<ModelGrupalReproCambiarData> cambiar = [];
                                    if (providerSubDoc.grupos[i].estadoDoc == 'R') {
                                      agregar = await ref
                                          .read(grupalSubDocBusquedaProvider.notifier)
                                          .onEventSearchReprocesadosAgregar(providerSubDoc.grupos[i].idDocumentoCr ?? 0);
                                      cambiar = await ref
                                          .read(grupalSubDocBusquedaProvider.notifier)
                                          .onEventSearchReprocesadosCambiar(providerSubDoc.grupos[i].idDocumentoCr ?? 0);
                                    }
                                    await SubidaDocumentosIsar().insertDatabaseSubidaDocumentos(
                                      fecha: DateTime.now(),
                                      grupo: providerSubDoc.grupos[i],
                                      documentos: providerSubDoc.documentos,
                                      agregar: agregar,
                                      cambiar: cambiar,
                                    );
                                  }
                                }
                                // ignore: use_build_context_synchronously
                                context.pop();
                                final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
                                ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
                              },
                        child: const Text('Aceptar'),
                      ),
                    ],
            ),
          );
        },
      ),
    );
  }
}
