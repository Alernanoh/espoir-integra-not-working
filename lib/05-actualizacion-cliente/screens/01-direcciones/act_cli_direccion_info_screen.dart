import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/models/actualizar_cliente_direccion_info_model.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';
import 'package:integra_espoir/shared/method/show_modal_bottom_method.dart';
import 'package:intl/intl.dart';

typedef InfoDataActCliDireccion = (String tipo, List<ModelActualizarClienteDireccionData> data);

class ActualizarClienteDireccionInfoScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteDireccionInfoScreen';
  const ActualizarClienteDireccionInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (tipo, data) = GoRouterState.of(context).extra as InfoDataActCliDireccion;
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: tipo == 'I' ? const Text('Datos del domicilio') : const Text('Datos del empleo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.penToSquare),
            onPressed: () async {
              final ModelActualizarClienteDireccionData auxData = ModelActualizarClienteDireccionData();
              await ref.read(actualizarClienteDireccionProvider.notifier).onChangeData(data.isEmpty ? auxData : data.first);
              // ignore: use_build_context_synchronously
              context.push('/${ActualizarClienteDireccionEditScreen.nameScreen}', extra: tipo);
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: ListTile(
                  title: Text('Información'),
                  trailing: Icon(FontAwesomeIcons.info, size: 18),
                ),
              ),
              const PopupMenuItem(
                value: 2,
                child: ListTile(
                  title: Text('Recargar'),
                  trailing: Icon(FontAwesomeIcons.arrowsRotate, size: 18),
                ),
              ),
            ],
            onSelected: (value) async {
              if (value == 1) {
                String publicFecha = '';
                if (tipo == 'I') {
                  if (providerActCli.domicilioInfo.first.fecha != null) {
                    publicFecha = DateFormat('dd-MMMM-yyyy -- hh:mm aaa').format(providerActCli.domicilioInfo.first.fecha!);
                  }
                } else {
                  if (providerActCli.empleoInfo.first.fecha != null) {
                    publicFecha = DateFormat('dd-MMMM-yyyy -- hh:mm aaa').format(providerActCli.empleoInfo.first.fecha!);
                  }
                }
                showMyModalBottom(context, 'Ultima fecha de modificación', publicFecha);
              } else if (value == 2) {
                if (providerInternet == ConnectivityStatus.isConnected) {
                  showMyDialog(context, 'Buscando información');
                  if (tipo == 'I') {
                    await ref.read(actualizarClienteProvider.notifier).getDomicilio(1);
                  } else {
                    await ref.read(actualizarClienteProvider.notifier).getEmpleo(2);
                  }
                  await Future.delayed(const Duration(seconds: 1));
                  // ignore: use_build_context_synchronously
                  context.pop();
                }
              }
            },
          ),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Card(
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const LabelTitleWidget(argTitle: 'Provincia'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.provinciaNombre ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.provinciaNombre ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Canton'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.cantonNombre ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.cantonNombre ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Parroquia'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.parroquiaNombre ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.parroquiaNombre ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Calle Principal'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.calle ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.calle ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Número de casa'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.numero ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.numero ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Calle Secundaria'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.interseccion ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.interseccion ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Sector'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.sector ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.sector ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Referencia'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.referencia ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.referencia ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Latitud'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.coordGoogleY ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.coordGoogleY ?? ''
                          : '',
                ),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Longitud'),
                LabelValueWidget(
                  argValue: tipo == 'I'
                      ? providerActCli.domicilioInfo.isNotEmpty
                          ? providerActCli.domicilioInfo.first.coordGoogleX ?? ''
                          : ''
                      : providerActCli.empleoInfo.isNotEmpty
                          ? providerActCli.empleoInfo.first.coordGoogleX ?? ''
                          : '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
