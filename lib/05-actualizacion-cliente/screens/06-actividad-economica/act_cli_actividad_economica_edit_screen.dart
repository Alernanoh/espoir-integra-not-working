import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_actividad_economica_service.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';

class ActualizarClienteActividadEconomicaEditScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteActividadEconomicaEditScreen';
  const ActualizarClienteActividadEconomicaEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(actualizarClienteActividadEconomicaProvider, (previous, next) {
      if (next.isSaving && next.errorMessage.isNotEmpty) {
        context.pop();
        showSnackBar(context, next.errorMessage, Colors.orange);
      }
      if (next.dataGuardado) {
        WebServer().conectToLogsAuditoria(
          argLog: 15,
          argEntrada: providerActCli.cedula.value,
          argResultado: 'Actividad economica',
        );
        context.pop();
        context.pop();
      }
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Editar actividad económica'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.floppyDisk),
            onPressed: providerInternet != ConnectivityStatus.isConnected
                ? null
                : () async {
                    showMyDialog(context, 'Guardando datos');
                    await Future.delayed(const Duration(seconds: 1));
                    ref.read(actualizarClienteActividadEconomicaProvider.notifier).saveData(providerActCli.idCliente);
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
                InputTextActividadEconomicaCuentaWidget(
                  argHintText: 'Ingrese el código de la actividad',
                  argLabelText: 'Actividad económica',
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Descripción'),
                ),
                _TextActividadEconomica(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TextActividadEconomica extends ConsumerWidget {
  const _TextActividadEconomica();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActividadEconomica = ref.watch(actualizarClienteActividadEconomicaProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        providerActividadEconomica.nameActividad,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
