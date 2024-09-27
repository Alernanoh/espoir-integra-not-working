import 'package:go_router/go_router.dart';
import 'package:integra_espoir/03-buro-rco/database/buro_rco_isar.dart';
import 'package:integra_espoir/03-buro-rco/services/buro_rco_isar_provider.dart';
import 'package:integra_espoir/03-buro-rco/services/buro_rco_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuroRcoIsarWidget extends ConsumerWidget {
  const BuroRcoIsarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerIsar = ref.watch(buroRcoIsarProvider);
    final providerIsarEvent = ref.watch(buroRcoIsarProvider.notifier);
    final providerBuroRcoEvent = ref.watch(buroRcoProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: providerIsar.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                for (var item in providerIsar.dataBuroRco)
                  Card(
                    child: ListTile(
                      leading: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.rightToBracket,
                          color: colorEspoirAzul,
                        ),
                        onPressed: () {
                          providerBuroRcoEvent.copyIsarData(
                            rcoHead: item.rcoHead,
                            rcoInfo: item.rcoInfo,
                            buroHead: item.buroHead,
                            buroResumen: item.buroResumen,
                            buroIfis: item.buroIfis,
                            buroInfocom: item.buroCuentasCorrientes,
                            buroGrafico: item.buroGrafico,
                          );
                          // ignore: use_build_context_synchronously
                          context.push('/${BuroRcoInfoScreen.nameScreen}');
                        },
                      ),
                      title: Text(
                        item.cliente,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Cedula: ${item.cedula} \nFecha: ${DateFormat.yMMMMd().format(item.fecha)}'),
                      isThreeLine: true,
                      trailing: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          BuroRcoIsar().deleteRcoByID(item.id);
                          final dataBuroRco = await BuroRcoIsar().getAllBuroRco();
                          providerIsarEvent.getDatabaseIsar(dataBuroRco: dataBuroRco);
                        },
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                const Text(
                  'Nota: Los datos guardados en el dispositivo tienen una duración de 24 horas como máximo',
                ),
              ],
            ),
    );
  }
}
