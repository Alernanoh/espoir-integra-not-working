// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/03-buro-rco/database/buro_rco_isar.dart';
import 'package:integra_espoir/03-buro-rco/services/buro_rco_isar_provider.dart';
import 'package:integra_espoir/03-buro-rco/services/buro_rco_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class BuroRcoScreen extends ConsumerWidget {
  static const nameScreen = 'BuroRcoScreen';
  const BuroRcoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerIsar = ref.watch(buroRcoIsarProvider.notifier);

    ref.listen(buroRcoProvider, (previus, next) {
      if (next.isSearch && next.errorMessage != "") showSnackBar(context, next.errorMessage, Colors.red);
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Buro y Rco'),
        bottom: const InternetStatusWidget(),
      ),
      drawer: const HomeDrawerWidget(),
      body: const BuroRcoIsarWidget(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: const Icon(FontAwesomeIcons.arrowsRotate),
            onPressed: () async {
              final dataBuroRco = await BuroRcoIsar().getAllBuroRco();
              providerIsar.getDatabaseIsar(dataBuroRco: dataBuroRco);
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
          final providerBuro = ref.watch(buroRcoProvider);
          final providerInternet = ref.watch(internetProvider);

          return PopScope(
            child: AlertDialog(
              title: Text(
                providerBuro.isSearch ? 'Buscando información' : 'Ingresar cédula',
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  providerBuro.isSearch
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
                          onChanged: (value) => ref.read(buroRcoProvider.notifier).onCedulaChange(value),
                          initialValue: providerBuro.cedula.value,
                        ),
                ],
              ),
              actions: providerBuro.isSearch
                  ? []
                  : [
                      TextButton(child: const Text('Cerrar'), onPressed: () => context.pop()),
                      TextButton(
                        onPressed: providerInternet != ConnectivityStatus.isConnected
                            ? null
                            : () async {
                                bool isOk = await ref.read(buroRcoProvider.notifier).onEventBuroRco();
                                if (isOk) {
                                  await WebServer().conectToLogsAuditoria(
                                    argLog: 13,
                                    argEntrada: providerBuro.cedula.value,
                                    argResultado: 'Ok',
                                  );
                                  context.pop();
                                  context.push('/${BuroRcoInfoScreen.nameScreen}');
                                } else {
                                  await WebServer().conectToLogsAuditoria(
                                    argLog: 13,
                                    argEntrada: providerBuro.cedula.value,
                                    argResultado: providerBuro.errorMessage,
                                  );
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
