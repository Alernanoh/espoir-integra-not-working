import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/widgets/actualizar_cliente_card_head.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class ActualizarClienteInformationScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteInformationScreen';
  const ActualizarClienteInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Información'),
        bottom: const InternetStatusWidget(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const ActualizarClienteCardHeadWidget(),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 50,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildListDelegate([
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.solidAddressCard,
                  argTitulo: 'Datos personales',
                  argTipo: 'DP',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.houseChimneyUser,
                  argTitulo: 'Dirección domicilio',
                  argTipo: 'I',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.store,
                  argTitulo: 'Dirección de negocio',
                  argTipo: 'J',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.mobileScreenButton,
                  argTitulo: 'Datos telefónicos',
                  argTipo: 'DT',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.moneyBillTransfer,
                  argTitulo: 'Estados financieros',
                  argTipo: 'EF',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.sackDollar,
                  argTitulo: 'Cuentas bancarias',
                  argTipo: 'CR',
                ),
                const _BtnOpen(
                  argIcon: FontAwesomeIcons.fileInvoiceDollar,
                  argTitulo: 'Actividad economica',
                  argTipo: 'AE',
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class _BtnOpen extends StatelessWidget {
  final IconData argIcon;
  final String argTitulo;
  final String argTipo;
  const _BtnOpen({
    required this.argIcon,
    required this.argTitulo,
    required this.argTipo,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final providerActCli = ref.watch(actualizarClienteProvider);

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: colorEspoirAmarrillo,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(argIcon, color: colorEspoirAzul, size: 35),
              const SizedBox(height: 10),
              Text(
                argTitulo,
                style: const TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.center,
              )
            ],
          ),
          onPressed: () {
            switch (argTipo) {
              case 'I':
                context.push(
                  '/${ActualizarClienteDireccionInfoScreen.nameScreen}',
                  extra: (argTipo, providerActCli.domicilioInfo),
                );
                break;
              case 'J':
                context.push(
                  '/${ActualizarClienteDireccionInfoScreen.nameScreen}',
                  extra: (argTipo, providerActCli.empleoInfo),
                );
                break;
              case 'DP':
                context.push('/${ActualizarClienteDatosPersonalesInfoScreen.nameScreen}');
                break;
              case 'DT':
                context.push('/${ActualizarClienteDatosTelefonicosInfoScreen.nameScreen}');
                break;
              case 'EF':
                context.push('/${ActualizarClienteEstadoFinancieroInfoScreen.nameScreen}');
                break;
              case 'CR':
                context.push('/${ActualizarClienteCuentasRecuperacionInfoScreen.nameScreen}');
                break;
              case 'AE':
                context.push('/${ActualizarClienteActividadEconomicaInfoScreen.nameScreen}');
                break;
            }
          },
        );
      },
    );
  }
}
