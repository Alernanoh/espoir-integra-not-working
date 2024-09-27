import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_cuentas_recuperacion_provider.dart';

class InputTextNumeroCuentaWidget extends ConsumerWidget {
  final String argHintText;
  final String argLabelText;

  const InputTextNumeroCuentaWidget({
    super.key,
    required this.argHintText,
    required this.argLabelText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerTelefonicos = ref.watch(actualizarClienteCuentaRecuperacionProvider);

    String value = providerTelefonicos.numeroCuenta;

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
        ref.read(actualizarClienteCuentaRecuperacionProvider.notifier).onChangeInputText(value);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) return "Este campo es obligatorio";
        return null;
      },
    );
  }
}
