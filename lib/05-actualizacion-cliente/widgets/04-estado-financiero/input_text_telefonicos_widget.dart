import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_estado_financiero_provider.dart';

class InputTextEstadoFinancieroWidget extends ConsumerWidget {
  final String argHintText;
  final String argLabelText;

  const InputTextEstadoFinancieroWidget({
    super.key,
    required this.argHintText,
    required this.argLabelText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerEstadoFinanciero = ref.watch(actualizarClienteEstadoFinancieroProvider);

    String value = '';
    if (argLabelText == 'Total activos') {
      value = providerEstadoFinanciero.activos.toString();
    } else if (argLabelText == 'Total pasivos') {
      value = providerEstadoFinanciero.pasivos.toString();
    } else if (argLabelText == 'Ingresos mensual') {
      value = providerEstadoFinanciero.ingresos.toString();
    } else if (argLabelText == 'Gasto mensual') {
      value = providerEstadoFinanciero.gastos.toString();
    }

    return TextFormField(
      initialValue: value,
      autocorrect: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: argHintText,
        labelText: argLabelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      onChanged: (value) {
        try {
          double valor = double.parse(value);
          if (argLabelText == 'Total activos') {
            ref.read(actualizarClienteEstadoFinancieroProvider.notifier).onChangeFormData(activos: valor);
          } else if (argLabelText == 'Total pasivos') {
            ref.read(actualizarClienteEstadoFinancieroProvider.notifier).onChangeFormData(pasivos: valor);
          } else if (argLabelText == 'Ingresos mensual') {
            ref.read(actualizarClienteEstadoFinancieroProvider.notifier).onChangeFormData(ingresos: valor);
          } else if (argLabelText == 'Gasto mensual') {
            ref.read(actualizarClienteEstadoFinancieroProvider.notifier).onChangeFormData(gastos: valor);
          }
        } catch (e) {
          ref.read(actualizarClienteEstadoFinancieroProvider.notifier).onChangeFormData(gastos: -1);
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) return "Este campo es obligatorio";
        return null;
      },
    );
  }
}
