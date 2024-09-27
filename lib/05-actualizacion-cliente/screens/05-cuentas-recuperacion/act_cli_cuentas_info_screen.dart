import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_cuentas_recuperacion_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';
import 'package:integra_espoir/shared/method/show_modal_bottom_method.dart';
import 'package:intl/intl.dart';

class ActualizarClienteCuentasRecuperacionInfoScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteCuentasRecuperacionInfoScreen';
  const ActualizarClienteCuentasRecuperacionInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Cuentas de recuperación'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.penToSquare),
            onPressed: () async {
              await ref.read(actualizarClienteCuentaRecuperacionProvider.notifier).onChangeData(
                    providerActCli.entidadesFinancieras,
                    providerActCli.tipoCuenta,
                    providerActCli.cuentaRecuperacion.first,
                  );

              // ignore: use_build_context_synchronously
              context.push('/${ActualizarClienteCuentasRecuperacionEditScreen.nameScreen}');
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
                if (providerActCli.cuentaRecuperacion.first.modificaFecha != null) {
                  publicFecha =
                      DateFormat('dd-MMMM-yyyy -- hh:mm aaa').format(providerActCli.cuentaRecuperacion.first.modificaFecha!);
                }
                showMyModalBottom(context, 'Ultima fecha de modificación', publicFecha);
              } else if (value == 2) {
                if (providerInternet == ConnectivityStatus.isConnected) {
                  showMyDialog(context, 'Buscando información');
                  await ref.read(actualizarClienteProvider.notifier).getCuentaRecuperacion(9);
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
                const LabelTitleWidget(argTitle: 'Número de cuenta'),
                LabelValueWidget(argValue: providerActCli.cuentaRecuperacion.first.numeroCuenta ?? ''),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Tipo de cuenta'),
                LabelValueWidget(argValue: providerActCli.cuentaRecuperacion.first.tipoCuentaDescrip ?? ''),
                const SizedBox(height: 15),
                const LabelTitleWidget(argTitle: 'Entidad financiera'),
                LabelValueWidget(argValue: providerActCli.cuentaRecuperacion.first.entidadFinancieraDescrip ?? ''),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
