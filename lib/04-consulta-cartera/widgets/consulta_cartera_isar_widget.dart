import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/04-consulta-cartera/database/consulta_cartera_isar.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_isar_provider.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:intl/intl.dart';

class ConsultaCarteraIsarWidget extends ConsumerWidget {
  const ConsultaCarteraIsarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerIsar = ref.watch(consultaCarteraIsarProvider);
    final providerIsarEvent = ref.watch(consultaCarteraIsarProvider.notifier);
    final providerConsultaCarteraEvent = ref.watch(consultaCarteraProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: providerIsar.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                for (var item in providerIsar.data)
                  Card(
                    child: ListTile(
                      leading: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.rightToBracket,
                          color: colorEspoirAzul,
                        ),
                        onPressed: () {
                          providerConsultaCarteraEvent.copyIsarData(
                            data: item.data,
                            transaccionesOne: item.transaccionesOne,
                            transaccionesTwo: item.transaccionesTwo,
                            transaccionesThree: item.transaccionesThree,
                            deudasOne: item.deudasOne,
                            deudasTwo: item.deudasTwo,
                            deudasThree: item.deudasThree,
                            informacionOne: item.informacionOne,
                            informacionTwo: item.informacionTwo,
                            informacionThree: item.informacionThree,
                            valoresOne: item.valoresOne,
                            valoresTwo: item.valoresTwo,
                            valoresThree: item.valoresThree,
                          );
                          context.push('/${ConsultaCarteraOpenScreen.nameScreen}');
                        },
                      ),
                      title: Text(
                        item.cliente,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Identificación: ${item.cedula} \nFecha: ${DateFormat.yMMMMd().format(item.fecha)}'),
                      isThreeLine: true,
                      trailing: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          ConsultaCarteraIsar().deleteConsultaCarteraByID(item.id);
                          final dataConsultaCartera = await ConsultaCarteraIsar().getAllConsultaCartera();
                          providerIsarEvent.getDatabaseIsar(data: dataConsultaCartera);
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
