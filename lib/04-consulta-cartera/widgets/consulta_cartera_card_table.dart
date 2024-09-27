import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/04-consulta-cartera/services/consulta_cartera_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

class ConsultaCarteraCardTableWidget extends ConsumerWidget {
  const ConsultaCarteraCardTableWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: colorEspoirAzul);
    final providerConsultaCartera = ref.watch(consultaCarteraProvider);
    final data = providerConsultaCartera.consultaCartera;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Ingresar', style: textStyle)),
              DataColumn(label: Text('Crédito', style: textStyle)),
              DataColumn(label: Text('Estado', style: textStyle)),
              DataColumn(label: Text('Saldo', style: textStyle)),
              DataColumn(label: Text('Mora', style: textStyle)),
            ],
            rows: List.generate(
              data.length,
              (index) => DataRow(
                cells: [
                  DataCell(
                    Center(
                      child: providerConsultaCartera.isDataBase && index > 2
                          ? null
                          : IconButton(
                              icon: const Icon(FontAwesomeIcons.rightToBracket, color: colorEspoirAzul),
                              onPressed: () {
                                if (providerConsultaCartera.isDataBase) {
                                  switch (index) {
                                    case 0:
                                      context.push(
                                        '/${ConsultaCarteraInformationScreen.nameScreen}',
                                        extra: (
                                          data[index].credito,
                                          providerConsultaCartera.transaccionesOne,
                                          providerConsultaCartera.deudasOne,
                                          providerConsultaCartera.informacionOne,
                                          providerConsultaCartera.valoresOne,
                                        ),
                                      );
                                      break;
                                    case 1:
                                      context.push(
                                        '/${ConsultaCarteraInformationScreen.nameScreen}',
                                        extra: (
                                          data[index].credito,
                                          providerConsultaCartera.transaccionesTwo,
                                          providerConsultaCartera.deudasTwo,
                                          providerConsultaCartera.informacionTwo,
                                          providerConsultaCartera.valoresTwo,
                                        ),
                                      );
                                      break;
                                    case 2:
                                      context.push(
                                        '/${ConsultaCarteraInformationScreen.nameScreen}',
                                        extra: (
                                          data[index].credito,
                                          providerConsultaCartera.transaccionesThree,
                                          providerConsultaCartera.deudasThree,
                                          providerConsultaCartera.informacionThree,
                                          providerConsultaCartera.valoresThree,
                                        ),
                                      );
                                      break;
                                  }
                                } else {
                                  context.push('/${ConsultaCarteraInformationScreen.nameScreen}', extra: (
                                    data[index].credito,
                                    <String>[],
                                    <String>[],
                                    <String>[],
                                    <String>[],
                                  ));
                                }
                              },
                            ),
                    ),
                  ),
                  DataCell(Text(data[index].credito ?? '', textAlign: TextAlign.start)),
                  DataCell(Text(data[index].estado ?? '', textAlign: TextAlign.start)),
                  DataCell(Align(alignment: Alignment.centerRight, child: Text('${data[index].saldo}'))),
                  DataCell(Align(alignment: Alignment.centerRight, child: Text('${data[index].diasMoraCnt}'))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
