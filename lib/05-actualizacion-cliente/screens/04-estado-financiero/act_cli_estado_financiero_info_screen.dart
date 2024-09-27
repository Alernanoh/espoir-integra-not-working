import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_estado_financiero_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';
import 'package:integra_espoir/shared/method/show_modal_bottom_method.dart';
import 'package:intl/intl.dart';

class ActualizarClienteEstadoFinancieroInfoScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteEstadoFinancieroInfoScreen';
  const ActualizarClienteEstadoFinancieroInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Estado financiero'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.penToSquare),
            onPressed: () async {
              await ref
                  .read(actualizarClienteEstadoFinancieroProvider.notifier)
                  .onChangeData(providerActCli.estadoFinanciero.first);

              // ignore: use_build_context_synchronously
              context.push('/${ActualizarClienteEstadoFinancieroEditScreen.nameScreen}');
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
                if (providerActCli.estadoFinanciero.first.fecha != null) {
                  publicFecha = DateFormat('dd-MMMM-yyyy -- hh:mm aaa').format(providerActCli.estadoFinanciero.first.fecha!);
                }
                showMyModalBottom(context, 'Ultima fecha de modificación', publicFecha);
              } else if (value == 2) {
                if (providerInternet == ConnectivityStatus.isConnected) {
                  showMyDialog(context, 'Buscando información');
                  await ref.read(actualizarClienteProvider.notifier).getEstadosFinancieros(6);
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
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Activos:'),
                LabelValueWidget(argValue: providerActCli.estadoFinanciero.first.totalActivos.toString()),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Pasivos:'),
                LabelValueWidget(argValue: providerActCli.estadoFinanciero.first.totalPasivos.toString()),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Ingresos mensuales:'),
                LabelValueWidget(argValue: providerActCli.estadoFinanciero.first.totalIngresosMensuales.toString()),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Gasto mensual:'),
                LabelValueWidget(argValue: providerActCli.estadoFinanciero.first.totalGastoMensuales.toString()),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
