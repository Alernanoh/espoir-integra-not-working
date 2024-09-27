import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integra_espoir/04-consulta-cartera/database/consulta_cartera_isar.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class ConsultaCarteraOpenScreen extends ConsumerWidget {
  static const nameScreen = '${ConsultaCarteraScreen.nameScreen}/ConsultaCarteraOpenScreen';
  const ConsultaCarteraOpenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerConsultaCartera = ref.watch(consultaCarteraProvider);

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Información'),
        actions: <Widget>[
          providerConsultaCartera.isDataBase
              ? Container()
              : IconButton(
                  icon: const Icon(FontAwesomeIcons.floppyDisk),
                  onPressed: () {
                    String cliente = '';
                    String identificacion = '';

                    if (providerConsultaCartera.consultaCartera.isNotEmpty) {
                      cliente = providerConsultaCartera.consultaCartera.first.nombre ?? '';
                      identificacion = providerConsultaCartera.consultaCartera.first.cedula ?? '';
                      ConsultaCarteraIsar().insertDatabaseConsultaCartera(
                        cedula: identificacion,
                        fecha: DateTime.now(),
                        cliente: cliente,
                        data: providerConsultaCartera.consultaCartera,
                        transaccionesOne: providerConsultaCartera.transaccionesOne,
                        transaccionesTwo: providerConsultaCartera.transaccionesTwo,
                        transaccionesThree: providerConsultaCartera.transaccionesThree,
                        deudasOne: providerConsultaCartera.deudasOne,
                        deudasTwo: providerConsultaCartera.deudasTwo,
                        deudasThree: providerConsultaCartera.deudasThree,
                        informacionOne: providerConsultaCartera.informacionOne,
                        informacionTwo: providerConsultaCartera.informacionTwo,
                        informacionThree: providerConsultaCartera.informacionThree,
                        valoresOne: providerConsultaCartera.valoresOne,
                        valoresTwo: providerConsultaCartera.valoresTwo,
                        valoresThree: providerConsultaCartera.valoresThree,
                      );
                      showSnackBar(context, 'Datos guardados', Colors.green);
                    }
                  },
                ),
          const SizedBox(width: 20),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ConsultaCarteraCardHeadWidget(),
            SizedBox(height: 10),
            ConsultaCarteraCardTableWidget(),
          ],
        ),
      ),
    );
  }
}
