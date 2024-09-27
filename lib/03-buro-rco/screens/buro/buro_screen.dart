import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:badges/badges.dart' as badges;

class BuroScreen extends StatelessWidget {
  final List<ModelBuroHeadData> argHead;
  final List<ModelBuroResumenData> argResumen;
  final List<ModelBuroIfisData> argIfis;
  final List<ModelBuroCuentasCorrientesData> argCuentasCorrientes;
  final List<ModelBuroGraficoData> argGrafico;
  const BuroScreen({
    super.key,
    required this.argHead,
    required this.argIfis,
    required this.argResumen,
    required this.argCuentasCorrientes,
    required this.argGrafico,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          sliver: SliverList(delegate: SliverChildListDelegate([BuroHeadWidget(argData: argHead)])),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildListDelegate([
              _BtnBuroOpen(
                argNovedad: 0,
                argIcon: FontAwesomeIcons.listCheck,
                argTitulo: 'Resumen',
                argData: argResumen,
              ),
              _BtnBuroOpen(
                argNovedad: 0,
                argIcon: FontAwesomeIcons.landmarkFlag,
                argTitulo: 'Ifis',
                argData: argIfis,
              ),
              _BtnBuroOpen(
                argNovedad: 0,
                argIcon: FontAwesomeIcons.solidCreditCard,
                argTitulo: 'Cuentas Corrientes',
                argData: argCuentasCorrientes,
              ),
              _BtnBuroOpen(
                argNovedad: 0,
                argIcon: FontAwesomeIcons.chartLine,
                argTitulo: 'Grafico',
                argData: argGrafico,
              ),
            ]),
          ),
        )
      ],
    );
  }
}

class _BtnBuroOpen extends StatelessWidget {
  final int argNovedad;
  final IconData argIcon;
  final String argTitulo;
  final List argData;
  const _BtnBuroOpen({required this.argNovedad, required this.argIcon, required this.argTitulo, required this.argData});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          badges.Badge(
            showBadge: argNovedad == 0 ? false : true,
            badgeContent: Text(
              '$argNovedad',
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            child: Icon(argIcon, color: colorEspoirAzul, size: 35),
          ),
          const SizedBox(height: 10),
          Text(
            argTitulo,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
      onPressed: () {
        switch (argTitulo) {
          case 'Resumen':
          case 'Ifis':
          case 'Cuentas Corrientes':
            if (argData.isNotEmpty) {
              context.push('/${BuroOpenInfoScreen.nameScreen}', extra: (argTitulo, argData));
            } else {
              showSnackBar(context, 'No existen datos', Colors.orangeAccent);
            }
            break;
          case 'Grafico':
            if (argData.isNotEmpty) {
              context.push('/${BuroGraficoScreen.nameScreen}', extra: (argTitulo, argData));
            } else {
              showSnackBar(context, 'No existen datos', Colors.orangeAccent);
            }
            break;
        }
      },
    );
  }
}
