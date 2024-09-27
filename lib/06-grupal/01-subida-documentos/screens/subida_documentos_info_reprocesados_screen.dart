import 'package:badges/badges.dart' as badges;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_imagenes_cambio_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';

class GrupalSubidaDocumentosInfoReprocesadosScreen extends ConsumerWidget {
  static const nameScreen =
      '${GrupalSubidaDocumentosScreen.nameScreen}/GrupalSubidaDocumentosInfoReprocesadosScreen';
  const GrupalSubidaDocumentosInfoReprocesadosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);
    final providerCambios = ref.watch(grupalSubDocImagenCambioProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(grupalSubDocGrupoProvider, (previous, next) async {
      if (next.errorMessage.isNotEmpty) {
        showSnackBar(context, next.errorMessage, Colors.orange);
      }

      if (next.guardarDatos) {
        context.pop();
        if (next.errorMessage.isEmpty) {
          await SubidaDocumentosIsar()
              .deleteSubidaDocumentosByID(providerGrupo.idIsar);
          final dataSubidaDocumentos =
              await SubidaDocumentosIsar().getAllSubidaDocumentos();
          ref
              .read(grupalSubDocIsarProvider.notifier)
              .getDatabaseIsar(data: dataSubidaDocumentos);
          // ignore: use_build_context_synchronously
          context.pop();
        }
      }
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: Text(providerGrupo.infoGrupo.first.grpNombre ?? ''),
        bottom: const InternetStatusWidget(),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cloudArrowUp),
            onPressed: providerInternet != ConnectivityStatus.isConnected
                ? null
                : () async {
                    bool op = ref
                        .read(grupalSubDocGrupoProvider.notifier)
                        .comprobarObligatoriosCambios();
                    if (op) {
                      showMyDialog(context, 'Subiendo información');
                      ref
                          .read(grupalSubDocGrupoProvider.notifier)
                          .onSaveImages(true);
                    }
                  },
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in providerGrupo.documentos)
                if (providerGrupo.agregar.contains(item.tddId))
                  Card(
                    child: ListTile(
                      iconColor: colorEspoirAzul,
                      leading: IconButton(
                        icon: const Icon(FontAwesomeIcons.rightToBracket),
                        onPressed: () {
                          context.push(
                              '/${GrupalSubidaDocumentosImagenScreen.nameScreen}',
                              extra: (item.tddId, 0));
                        },
                      ),
                      title: Text('${item.tddNombreDocumento}'),
                      trailing: badges.Badge(
                        badgeContent: Text(
                          ref
                              .read(grupalSubDocGrupoProvider.notifier)
                              .getContImage(item.tddId ?? 0),
                        ),
                        badgeStyle: const badges.BadgeStyle(
                            badgeColor: colorEspoirAmarrillo),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item.tddEsObligatorio == 1 ? '* ' : '',
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            const Icon(FontAwesomeIcons.image),
                          ],
                        ),
                      ),
                    ),
                  ),
              if (providerGrupo.cambiar.isNotEmpty)
                Card(
                  child: ListTile(
                    iconColor: colorEspoirAzul,
                    leading: providerCambios.search
                        ? const CircularProgressIndicator()
                        : IconButton(
                            icon: const Icon(FontAwesomeIcons.rightToBracket),
                            onPressed: () async {
                              final op = await ref
                                  .read(
                                      grupalSubDocImagenCambioProvider.notifier)
                                  .onGetImagenCambio(providerGrupo.cambiar,
                                      providerGrupo.idIsar);
                              if (op) {
                                // ignore: use_build_context_synchronously
                                context.push(
                                    '/${GrupalSubidaDocumentosImagenCambioScreen.nameScreen}');
                              }
                            },
                          ),
                    title: const Text('Cambios de imagenes'),
                    trailing: badges.Badge(
                      badgeContent: Text(
                        ref
                            .read(grupalSubDocGrupoProvider.notifier)
                            .getContImageCambio(),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                          badgeColor: colorEspoirAmarrillo),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Icon(FontAwesomeIcons.image),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 5),
              const Text('Nota: * son obligatorios'),
            ],
          ),
        ),
      ),
    );
  }
}
