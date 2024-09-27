import 'package:flutter/material.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class BuroHeadWidget extends StatelessWidget {
  final List<ModelBuroHeadData> argData;
  const BuroHeadWidget({super.key, required this.argData});

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
                for (var item in argData)
                  TableRow(
                    children: [
                      CardTitleWidget(argTitle: item.titulo ?? ''),
                      CardValueWidget(argValue: item.valor ?? ''),
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
