import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_datos_telefonicos_provider.dart';

class InputTextTelefonicosWidget extends ConsumerWidget {
  final String argHintText;
  final String argLabelText;
  final bool argValidate;

  const InputTextTelefonicosWidget({
    super.key,
    required this.argHintText,
    required this.argLabelText,
    required this.argValidate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerTelefonicos = ref.watch(actualizarClienteDatosTelefonicosProvider);

    String value = '';
    if (argLabelText == 'Telefono celular') {
      value = providerTelefonicos.celular;
    } else if (argLabelText == 'Telefono domicilio') {
      value = providerTelefonicos.domicilio;
    }

    return TextFormField(
      initialValue: value,
      autocorrect: true,
      keyboardType: TextInputType.number,
      maxLength: 10,
      decoration: InputDecoration(
        hintText: argHintText,
        labelText: argLabelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      onChanged: (value) {
        if (argLabelText == 'Telefono celular') {
          ref.read(actualizarClienteDatosTelefonicosProvider.notifier).onChangeFormData(celular: value);
        } else if (argLabelText == 'Telefono domicilio') {
          ref.read(actualizarClienteDatosTelefonicosProvider.notifier).onChangeFormData(domicilio: value);
        }
      },
      autovalidateMode: argValidate ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      validator: (value) {
        if (value!.isEmpty) return "Este campo es obligatorio";
        return null;
      },
    );
  }
}
