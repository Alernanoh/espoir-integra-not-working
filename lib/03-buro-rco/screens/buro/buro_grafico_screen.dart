import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:fl_animated_linechart/fl_animated_linechart.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

typedef InfoDataBuroGrafico = (String titulo, List<ModelBuroGraficoData> data);

class BuroGraficoScreen extends ConsumerWidget {
  static const nameScreen = '${BuroRcoScreen.nameScreen}/BuroGraficoScreen';
  const BuroGraficoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (titulo, data) = GoRouterState.of(context).extra as InfoDataBuroGrafico;

    Map<DateTime, double> dataDeudaTotal = {};
    Map<DateTime, double> dataVencida = {};

    for (var item in data) {
      dataDeudaTotal[item.fechaCorte!] = item.totalDeuda!;
      dataVencida[item.fechaCorte!] = item.valorVencidoTotal!;
    }

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: Text(titulo.toUpperCase()),
        bottom: const InternetStatusWidget(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidCircle, color: Colors.green, size: 15),
              Text('Deuda Total', style: TextStyle(fontSize: 17)),
              SizedBox(width: 25),
              Icon(FontAwesomeIcons.solidCircle, color: Colors.red, size: 15),
              Text('Vencida', style: TextStyle(fontSize: 17)),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 10, bottom: 50, top: 10),
              child: AnimatedLineChart(
                LineChart.fromDateTimeMaps(
                  [dataDeudaTotal, dataVencida],
                  [Colors.green, Colors.red],
                  ['', ''],
                ),
                gridColor: Colors.black,
                toolTipColor: colorEspoirAmarrillo,
                textStyle: const TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
