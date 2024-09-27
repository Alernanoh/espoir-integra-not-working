import 'package:flutter/material.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/shared/widgets/cards_widgets.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

class RcoHeadWidget extends StatelessWidget {
  final ModelRcoHeadData argData;
  const RcoHeadWidget({super.key, required this.argData});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Datos Personales',
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
                    const CardTitleWidget(argTitle: 'Cédula:'),
                    CardValueWidget(argValue: argData.identificacion ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Nombre:'),
                    CardValueWidget(argValue: argData.nombre ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Calificación:'),
                    CardValueWidget(argValue: argData.calificacionCli ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Edad:'),
                    CardValueWidget(argValue: argData.edad.toString()),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
