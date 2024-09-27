import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class ActualizarClienteCardHeadWidget extends ConsumerWidget {
  const ActualizarClienteCardHeadWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActCli = ref.watch(actualizarClienteProvider);

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
              children: [
                for (var item in providerActCli.head)
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
