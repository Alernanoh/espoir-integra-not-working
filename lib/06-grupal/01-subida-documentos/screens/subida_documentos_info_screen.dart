import 'package:badges/badges.dart' as badges;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/subida_documentos_isar.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';
import 'package:permission_handler/permission_handler.dart';

class GrupalSubidaDocumentosInfoScreen extends ConsumerWidget {
  static const nameScreen = '${GrupalSubidaDocumentosScreen.nameScreen}/GrupalSubidaDocumentosInfoScreen';
  const GrupalSubidaDocumentosInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);
    final providerInternet = ref.watch(internetProvider);

    Future<void> obtenerCoordenadas() async {
      Geolocator.requestPermission();
      bool gpsEnabled = await Geolocator.isLocationServiceEnabled();
      if (gpsEnabled) {
        PermissionStatus gpsPermission = await Permission.location.request();
        switch (gpsPermission) {
          case PermissionStatus.granted:
            Position coordenadas = await Geolocator.getCurrentPosition();
            SubidaDocumentosIsar().insertCoordenas(providerGrupo.idIsar, coordenadas);
            ref.read(grupalSubDocGrupoProvider.notifier).onChangeCoordenadas(coordenadas);
            final data = await SubidaDocumentosIsar().getAllSubidaDocumentos();
            ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: data);
            break;
          case PermissionStatus.denied:
          case PermissionStatus.restricted:
          case PermissionStatus.limited:
          case PermissionStatus.permanentlyDenied:
          case PermissionStatus.provisional:
            openAppSettings();
            break;
        }
      } else {
        ref.read(grupalSubDocGrupoProvider.notifier).onchangeErrorMessage('Active el GPS');
      }
    }

    ref.listen(grupalSubDocGrupoProvider, (previous, next) async {
      if (next.errorMessage.isNotEmpty) showSnackBar(context, next.errorMessage, Colors.orange);

      if (next.guardarDatos) {
        context.pop();
        if (next.errorMessage.isEmpty) {
          await SubidaDocumentosIsar().deleteSubidaDocumentosByID(providerGrupo.idIsar);
          final dataSubidaDocumentos = await SubidaDocumentosIsar().getAllSubidaDocumentos();
          ref.read(grupalSubDocIsarProvider.notifier).getDatabaseIsar(data: dataSubidaDocumentos);
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
                    bool op = ref.read(grupalSubDocGrupoProvider.notifier).comprobarObligatorios();
                    if (op) {
                      showMyDialog(context, 'Subiendo información');
                      ref.read(grupalSubDocGrupoProvider.notifier).onSaveImages(false);
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
              const GrupalSubidaDocumentosCardCoordenadasWidget(),
              for (var item in providerGrupo.documentos)
                Card(
                  child: ListTile(
                    iconColor: colorEspoirAzul,
                    leading: IconButton(
                      icon: const Icon(FontAwesomeIcons.rightToBracket),
                      onPressed: () {
                        context.push('/${GrupalSubidaDocumentosImagenScreen.nameScreen}', extra: (item.tddId, 0));
                      },
                    ),
                    title: Text('${item.tddNombreDocumento}'),
                    trailing: badges.Badge(
                      badgeContent: Text(
                        ref.read(grupalSubDocGrupoProvider.notifier).getContImage(item.tddId ?? 0),
                      ),
                      badgeStyle: const badges.BadgeStyle(badgeColor: colorEspoirAmarrillo),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.tddEsObligatorio == 1 ? '* ' : '',
                            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          const Icon(FontAwesomeIcons.image),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.locationDot),
        onPressed: () => obtenerCoordenadas(),
      ),
    );
  }
}
