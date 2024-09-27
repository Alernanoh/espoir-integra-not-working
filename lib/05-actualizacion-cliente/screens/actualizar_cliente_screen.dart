// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/database/ubicacion_isar.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/ubicacion.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:intl/intl.dart';

class ActualizarClienteScreen extends ConsumerStatefulWidget {
  static const nameScreen = 'ActualizarClienteScreen';
  const ActualizarClienteScreen({super.key});

  @override
  ActualizarClienteScreenState createState() => ActualizarClienteScreenState();
}

class ActualizarClienteScreenState extends ConsumerState<ActualizarClienteScreen> {
  void getUbicacionOpen() async {
    final dataUbicacion = await UbicacionIsar().getAllUbicacion();
    if (dataUbicacion.isNotEmpty) {
      ref.read(ubicacionProvider.notifier).copyIsar(
            fecha: dataUbicacion.first.fecha.toString(),
            provincias: dataUbicacion.first.provincias,
            cantones: dataUbicacion.first.cantones,
            parroquias: dataUbicacion.first.parroquias,
          );
    }
  }

  @override
  void initState() {
    super.initState();
    getUbicacionOpen();
  }

  @override
  Widget build(BuildContext context) {
    final providerUbicacion = ref.watch(ubicacionProvider);

    ref.listen(actualizarClienteProvider, (previus, next) {
      if (next.isSearch && next.errorMessage != "") showSnackBar(context, next.errorMessage, Colors.red);
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Actualizar cliente'),
        bottom: const InternetStatusWidget(),
      ),
      drawer: const HomeDrawerWidget(),
      body: const Center(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.mapLocation),
            onPressed: () async {
              _showDialogUbicaciones(context);
            },
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: providerUbicacion.provincias.isNotEmpty,
            child: FloatingActionButton(
              heroTag: null,
              child: const Icon(FontAwesomeIcons.plus),
              onPressed: () {
                _showMyDialog(context);
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
          final providerActCli = ref.watch(actualizarClienteProvider);
          final providerInternet = ref.watch(internetProvider);

          return PopScope(
            child: AlertDialog(
              title: Text(
                providerActCli.isSearch ? 'Buscando información' : 'Ingresar cédula',
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  providerActCli.isSearch
                      ? const CircularProgressIndicator()
                      : TextFormField(
                          autocorrect: false,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          maxLength: 10,
                          decoration: const InputDecoration(
                            labelText: 'Cédula',
                            labelStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(FontAwesomeIcons.solidIdCard),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                          onChanged: (value) => ref.read(actualizarClienteProvider.notifier).onCedulaChange(value),
                          initialValue: providerActCli.cedula.value,
                        ),
                ],
              ),
              actions: providerActCli.isSearch
                  ? []
                  : [
                      TextButton(child: const Text('Cerrar'), onPressed: () => context.pop()),
                      TextButton(
                        onPressed: providerInternet != ConnectivityStatus.isConnected
                            ? null
                            : () async {
                                bool isOk = await ref.read(actualizarClienteProvider.notifier).onEventActualizarCliente();

                                if (isOk) {
                                  await WebServer().conectToLogsAuditoria(
                                    argLog: 14,
                                    argEntrada: providerActCli.cedula.value,
                                    argResultado: 'Ok',
                                  );
                                  context.pop();
                                  context.push('/${ActualizarClienteInformationScreen.nameScreen}');
                                }
                              },
                        child: const Text('Buscar'),
                      ),
                    ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _showDialogUbicaciones(BuildContext argContext) async {
    return showDialog(
      context: argContext,
      builder: (context) => Consumer(
        builder: (context, ref, child) {
          final providerInternet = ref.watch(internetProvider);
          final providerUbicacion = ref.watch(ubicacionProvider);

          String fecha = '';
          if (providerUbicacion.fecha != '') {
            fecha = DateFormat('EEEE, MMMM d,yyyy').format(DateTime.parse(providerUbicacion.fecha));
          }

          return PopScope(
            child: AlertDialog(
              title: const Text(
                'Datos almacenados de ubicación',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              content: providerUbicacion.isLoading
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [Center(child: CircularProgressIndicator())],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        const Text('Ultima actualización'),
                        Text(
                          fecha,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: colorEspoirAzul,
                          ),
                        ),
                      ],
                    ),
              actions: [
                TextButton(child: const Text('Cerrar'), onPressed: () => context.pop()),
                TextButton(
                  onPressed: providerInternet != ConnectivityStatus.isConnected
                      ? null
                      : providerUbicacion.isLoading
                          ? null
                          : () async {
                              await ref.read(ubicacionProvider.notifier).onEventUbicacion();
                              context.pop();
                            },
                  child: const Text('Buscar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
