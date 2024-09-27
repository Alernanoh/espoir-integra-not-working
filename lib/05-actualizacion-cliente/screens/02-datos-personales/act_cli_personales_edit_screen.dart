import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_datos_personales_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/widgets/02-datos-personales/dropdown_estado_civil.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';

class ActualizarClienteDatosPersonalesEditScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteDatosPersonalesEditScreen';
  const ActualizarClienteDatosPersonalesEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(actualizarClienteDatosPersonalesProvider, (previous, next) {
      if (next.isSaving && next.errorMessage.isNotEmpty) {
        context.pop();
        showSnackBar(context, next.errorMessage, Colors.orange);
      }
      if (next.dataGuardado) {
        WebServer().conectToLogsAuditoria(
          argLog: 15,
          argEntrada: providerActCli.cedula.value,
          argResultado: 'Datos personales',
        );
        context.pop();
        context.pop();
      }
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Editar datos personales'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.floppyDisk),
            onPressed: providerInternet != ConnectivityStatus.isConnected
                ? null
                : () async {
                    showMyDialog(context, 'Guardando datos');
                    await Future.delayed(const Duration(seconds: 1));
                    ref.read(actualizarClienteDatosPersonalesProvider.notifier).saveData(providerActCli.idCliente);
                  },
          ),
          const SizedBox(width: 5),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Fecha Nacimiento'),
                ),
                InputDateDatosPersonalesWidget(),
                SizedBox(height: 20),
                DropdownEstadoCivilWidget(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
