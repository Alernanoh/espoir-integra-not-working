import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_estado_financiero_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';

class ActualizarClienteEstadoFinancieroEditScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteEstadoFinancieroEditScreen';
  const ActualizarClienteEstadoFinancieroEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(actualizarClienteEstadoFinancieroProvider, (previous, next) {
      if (next.isSaving && next.errorMessage.isNotEmpty) {
        context.pop();
        showSnackBar(context, next.errorMessage, Colors.orange);
      }
      if (next.dataGuardado) {
        WebServer().conectToLogsAuditoria(
          argLog: 15,
          argEntrada: providerActCli.cedula.value,
          argResultado: 'Estado financiero',
        );
        context.pop();
        context.pop();
      }
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Editar cuentas de recuperacion'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.floppyDisk),
            onPressed: providerInternet != ConnectivityStatus.isConnected
                ? null
                : () async {
                    showMyDialog(context, 'Guardando datos');
                    await Future.delayed(const Duration(seconds: 1));
                    ref.read(actualizarClienteEstadoFinancieroProvider.notifier).saveData(providerActCli.idCliente);
                  },
          ),
          const SizedBox(width: 20),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                InputTextEstadoFinancieroWidget(
                  argHintText: 'Ingrese el valor de activos',
                  argLabelText: 'Total activos',
                ),
                SizedBox(height: 20),
                InputTextEstadoFinancieroWidget(
                  argHintText: 'Ingrese el valor de pasivos',
                  argLabelText: 'Total pasivos',
                ),
                SizedBox(height: 20),
                InputTextEstadoFinancieroWidget(
                  argHintText: 'Ingrese el valor de ingresos mensuales',
                  argLabelText: 'Ingresos mensual',
                ),
                SizedBox(height: 20),
                InputTextEstadoFinancieroWidget(
                  argHintText: 'Ingrese el valor de gastos mensuales',
                  argLabelText: 'Gasto mensual',
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
