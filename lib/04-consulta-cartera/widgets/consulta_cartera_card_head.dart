import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/shared/widgets/cards_widgets.dart';

class ConsultaCarteraCardHeadWidget extends ConsumerWidget {
  const ConsultaCarteraCardHeadWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerConsultaCartera = ref.watch(consultaCarteraProvider);

    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Datos',
              style: TextStyle(
                color: colorEspoirAzul,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Divider(),
            Table(
              columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(3)},
              children: [
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Identificación:'),
                    providerConsultaCartera.consultaCartera.isEmpty
                        ? const CardValueWidget(argValue: 'No se encontraron datos')
                        : CardValueWidget(argValue: providerConsultaCartera.consultaCartera.first.cedula ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Nombre:'),
                    providerConsultaCartera.consultaCartera.isEmpty
                        ? const CardValueWidget(argValue: 'No se encontraron datos')
                        : CardValueWidget(
                            argValue: providerConsultaCartera.consultaCartera.first.nombre ?? 'No se encontraron datos'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
