import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integra_espoir/03-buro-rco/database/buro_rco_isar.dart';
import 'package:integra_espoir/03-buro-rco/services/buro_rco_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class BuroRcoInfoScreen extends ConsumerStatefulWidget {
  static const nameScreen = '${BuroRcoScreen.nameScreen}/BuroRcoInfoScreen';
  const BuroRcoInfoScreen({super.key});

  @override
  BuroRcoInfoScreenState createState() => BuroRcoInfoScreenState();
}

class BuroRcoInfoScreenState extends ConsumerState<BuroRcoInfoScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerBuroRco = ref.watch(buroRcoProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Información'),
        actions: <Widget>[
          providerBuroRco.isDataBase
              ? Container()
              : IconButton(
                  icon: const Icon(FontAwesomeIcons.floppyDisk),
                  onPressed: () {
                    String cliente = '';
                    providerBuroRco.buroHead.asMap().forEach(
                      (key, value) {
                        if (value.titulo == 'Nombre') cliente = value.valor ?? '';
                      },
                    );

                    BuroRcoIsar().insertDatabaseRco(
                      cedula: providerBuroRco.cedula.value,
                      cliente: cliente,
                      fecha: DateTime.now(),
                      rcoHead: providerBuroRco.rcoHead,
                      rcoInfo: providerBuroRco.rcoInfo,
                      buroAval: providerBuroRco.buroAval,
                      buroHead: providerBuroRco.buroHead,
                      buroIfis: providerBuroRco.buroIfis,
                      buroResumen: providerBuroRco.buroResumen,
                      buroCuentasCorrientes: providerBuroRco.buroCuentasCorrientes,
                      buroGrafico: providerBuroRco.buroGrafico,
                    );
                    showSnackBar(context, 'Datos guardados', Colors.green);
                  },
                ),
          const SizedBox(width: 20),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                color: colorEspoirAmarrillo,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                isScrollable: false,
                enableFeedback: false,
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: colorEspoirAzul,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const <Tab>[
                  Tab(
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Buro',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Rco',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                BuroScreen(
                  argHead: providerBuroRco.buroHead,
                  argIfis: providerBuroRco.buroIfis,
                  argResumen: providerBuroRco.buroResumen,
                  argCuentasCorrientes: providerBuroRco.buroCuentasCorrientes,
                  argGrafico: providerBuroRco.buroGrafico,
                ),
                RcoScreen(argHead: providerBuroRco.rcoHead, argInfo: providerBuroRco.rcoInfo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
