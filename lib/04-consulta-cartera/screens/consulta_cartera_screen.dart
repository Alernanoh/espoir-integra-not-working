// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/04-consulta-cartera/database/consulta_cartera_isar.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_isar_provider.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class ConsultaCarteraScreen extends ConsumerWidget {
  static const nameScreen = 'ConsultaCarteraScreen';
  const ConsultaCarteraScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerIsar = ref.watch(consultaCarteraIsarProvider.notifier);

    ref.listen(
      consultaCarteraProvider,
      (previous, next) {
        if (next.isSearch && next.errorMessage != "") showSnackBar(context, next.errorMessage, Colors.red);
      },
    );

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Consulta de cartera'),
        bottom: const InternetStatusWidget(),
      ),
      drawer: const HomeDrawerWidget(),
      body: const ConsultaCarteraIsarWidget(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.arrowsRotate),
            onPressed: () async {
              final dataConsultaCartera = await ConsultaCarteraIsar().getAllConsultaCartera();
              providerIsar.getDatabaseIsar(data: dataConsultaCartera);
            },
          ),
          const SizedBox(height: 5),
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.plus),
            onPressed: () {
              _showMyDialog(context);
            },
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
          final providerConsultaCartera = ref.watch(consultaCarteraProvider);
          final providerInternet = ref.watch(internetProvider);

          return PopScope(
            child: AlertDialog(
              title: Text(
                providerConsultaCartera.isSearch ? 'Buscando información' : 'Ingresar cédula o grupo',
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              content: providerConsultaCartera.isSearch
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(child: CircularProgressIndicator()),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        TextFormField(
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
                          onChanged: (value) => ref.read(consultaCarteraProvider.notifier).onCedulaChange(value),
                          initialValue: providerConsultaCartera.cedula.value,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          autocorrect: false,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'Grupo',
                            labelStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(FontAwesomeIcons.userGroup),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                          onChanged: (value) => ref.read(consultaCarteraProvider.notifier).onGrupoChange(value),
                          initialValue: providerConsultaCartera.grupo.value,
                        ),
                      ],
                    ),
              actions: providerConsultaCartera.isSearch
                  ? []
                  : [
                      TextButton(child: const Text('Cerrar'), onPressed: () => context.pop()),
                      TextButton(
                        onPressed: providerInternet != ConnectivityStatus.isConnected
                            ? null
                            : () async {
                                bool isOk = await ref.read(consultaCarteraProvider.notifier).onEventConsultaCartera();
                                if (isOk) {
                                  if (providerConsultaCartera.grupo.isValid) {
                                    await WebServer().conectToLogsAuditoria(
                                      argLog: 11,
                                      argEntrada: providerConsultaCartera.grupo.value,
                                      argResultado: 'Ok',
                                    );
                                  } else {
                                    await WebServer().conectToLogsAuditoria(
                                      argLog: 11,
                                      argEntrada: providerConsultaCartera.cedula.value,
                                      argResultado: 'Ok',
                                    );
                                  }

                                  context.pop();
                                  context.push('/${ConsultaCarteraOpenScreen.nameScreen}');
                                } else {
                                  if (providerConsultaCartera.grupo.isValid) {
                                    await WebServer().conectToLogsAuditoria(
                                      argLog: 11,
                                      argEntrada: providerConsultaCartera.grupo.value,
                                      argResultado: 'Error',
                                    );
                                  } else {
                                    await WebServer().conectToLogsAuditoria(
                                      argLog: 11,
                                      argEntrada: providerConsultaCartera.cedula.value,
                                      argResultado: providerConsultaCartera.errorMessage,
                                    );
                                  }
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
}
