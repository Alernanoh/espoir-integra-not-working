import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

typedef InfoConsultaCarteraCredito = (
  String titulo,
  List<String> transacciones,
  List<String> deudas,
  List<String> informacion,
  List<String> valores,
);

class ConsultaCarteraInformationScreen extends ConsumerStatefulWidget {
  static const nameScreen = '${ConsultaCarteraScreen.nameScreen}/ConsultaCarteraInformationScreen';
  const ConsultaCarteraInformationScreen({super.key});

  @override
  ConsultaCarteraInformationScreenState createState() => ConsultaCarteraInformationScreenState();
}

class ConsultaCarteraInformationScreenState extends ConsumerState<ConsultaCarteraInformationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (
      titulo,
      transacciones,
      deudas,
      informacion,
      valores,
    ) = GoRouterState.of(context).extra as InfoConsultaCarteraCredito;

    final providerEvent = ref.watch(consultaCarteraProvider.notifier);

    if (transacciones.isEmpty) {
      return FutureBuilder(
        future: providerEvent.getDataCredito(titulo),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Scaffold(
              backgroundColor: colorEspoirPlomo,
              appBar: AppBar(
                title: Text(titulo.toUpperCase()),
              ),
              body: const Center(
                child: CircularProgressIndicator(color: colorEspoirAzul),
              ),
            );
          }

          return _InfoCredito(
            titulo: titulo,
            tabController: _tabController,
            transacciones: snapshot.data['Transacciones'],
            deudas: snapshot.data['Deudas'],
            informacion: snapshot.data['Informacion'],
            valores: snapshot.data['Valores'],
          );
        },
      );
    } else {
      return _InfoCredito(
        titulo: titulo,
        tabController: _tabController,
        transacciones: _transformarData(transacciones),
        deudas: _transformarData(deudas),
        informacion: _transformarData(informacion),
        valores: _transformarData(valores),
      );
    }
  }
}

class _InfoCredito extends StatelessWidget {
  const _InfoCredito({
    required this.titulo,
    required TabController tabController,
    required this.transacciones,
    required this.deudas,
    required this.informacion,
    required this.valores,
  }) : _tabController = tabController;

  final String titulo;

  final TabController _tabController;
  final List<dynamic> transacciones;
  final List<dynamic> deudas;
  final List<dynamic> informacion;
  final List<dynamic> valores;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: Text(titulo.toUpperCase()),
        bottom: const InternetStatusWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: colorEspoirAmarrillo,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                isScrollable: true,
                enableFeedback: false,
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: colorEspoirAzul,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const <Tab>[
                  Tab(text: 'Transacciones'),
                  Tab(text: 'Deuda pendiente'),
                  Tab(text: 'Información crédito'),
                  Tab(text: 'Tabla actualizada'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ConsultaCarteraDataTableWidget(
                    argKeys: _getkeys(transacciones),
                    argValues: _getValues(transacciones),
                  ),
                  ConsultaCarteraDataTableWidget(
                    argKeys: _getkeys(deudas),
                    argValues: _getValues(deudas),
                  ),
                  ConsultaCarteraDataTableWidget(
                    argKeys: _getkeys(informacion),
                    argValues: _getValues(informacion),
                  ),
                  ConsultaCarteraDataTableWidget(
                    argKeys: _getkeys(valores),
                    argValues: _getValues(valores),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List _transformarData(List data) {
  final op = [];
  for (var item in data) {
    op.add(json.decode(item));
  }
  return op;
}

List _getValues(var data) {
  List dataComplete = data;
  List valuesData = [];
  for (var element in dataComplete) {
    List aux = [];
    for (var item in element.values) {
      aux.add(item);
    }
    valuesData.add(aux);
  }
  return valuesData;
}

List _getkeys(var data) {
  List dataComplete = data;
  List keysData = [];
  if (dataComplete.isNotEmpty) {
    Map modelMap = dataComplete[0];
    for (var element in modelMap.keys) {
      keysData.add(element);
    }
  }
  return keysData;
}
