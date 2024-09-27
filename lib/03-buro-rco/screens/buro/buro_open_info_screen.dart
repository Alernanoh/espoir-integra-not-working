import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/03-buro-rco/models/buro/buro_open_model.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

typedef InfoDataBuroOpen = (String titulo, List data);

class BuroOpenInfoScreen extends ConsumerWidget {
  static const nameScreen = '${BuroRcoScreen.nameScreen}/BuroOpenInfoScreen';
  const BuroOpenInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (titulo, data) = GoRouterState.of(context).extra as InfoDataBuroOpen;
    final List cards = [];
    final List<ModelBuroOpen> cardInfo = [];
    switch (titulo) {
      case 'Resumen':
        for (ModelBuroResumenData item in data) {
          if (item.titulo == 'Salto') {
            cards.add([...cardInfo]);
            cardInfo.clear();
          } else {
            ModelBuroOpen op = ModelBuroOpen(alerta: item.alerta, titulo: item.titulo, valor: item.valor);
            cardInfo.add(op);
          }
        }
        break;
      case 'Ifis':
        for (ModelBuroIfisData item in data) {
          if (item.titulo == 'Salto') {
            cards.add([...cardInfo]);
            cardInfo.clear();
          } else {
            ModelBuroOpen op = ModelBuroOpen(alerta: item.alerta, titulo: item.titulo, valor: item.valor);
            cardInfo.add(op);
          }
        }
        break;
      case 'Cuentas Corrientes':
        for (ModelBuroCuentasCorrientesData item in data) {
          if (item.titulo == 'Salto') {
            cards.add([...cardInfo]);
            cardInfo.clear();
          } else {
            ModelBuroOpen op = ModelBuroOpen(alerta: item.alerta, titulo: item.titulo, valor: item.valor);
            cardInfo.add(op);
          }
        }
        break;
    }

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: Text(titulo.toUpperCase()),
        bottom: const InternetStatusWidget(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            for (var item in cards)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Table(
                        columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(3)},
                        children: [
                          for (ModelBuroOpen element in item)
                            TableRow(
                              children: [
                                CardTitleWidget(argTitle: element.titulo ?? ''),
                                CardValueAlertWidget(argValue: element.valor ?? '', argColor: element.alerta ?? 0),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
