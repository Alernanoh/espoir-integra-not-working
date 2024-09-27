import 'package:flutter/material.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/shared/widgets/cards_widgets.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

class RcoInfoWidget extends StatelessWidget {
  final ModelRcoInfoData argData;
  const RcoInfoWidget({super.key, required this.argData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Tarjeta ',
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
                    const CardTitleWidget(argTitle: 'Operación:'),
                    CardValueWidget(argValue: argData.creCredito ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Tipo:'),
                    CardValueWidget(argValue: argData.tipo ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Producto:'),
                    CardValueWidget(argValue: argData.producto ?? ''),
                  ],
                ),
                TableRow(
                  children: [
                    const CardTitleWidget(argTitle: 'Mora:'),
                    CardValueWidget(argValue: argData.diasMora.toString()),
                  ],
                ),
              ],
            ),
            Table(
              children: [
                const TableRow(children: [
                  CardTitleWidget(argTitle: 'Saldo K:'),
                  CardTitleWidget(argTitle: 'Por vencer K:'),
                  CardTitleWidget(argTitle: 'Vencido K:'),
                ]),
                TableRow(children: [
                  CardValueWidget(argValue: argData.creSaldo.toString()),
                  CardValueWidget(argValue: argData.saldoXVencer.toString()),
                  CardValueWidget(argValue: argData.saldoVencido.toString()),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
