import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';

class InputTextDireccionWidget extends ConsumerWidget {
  final String argHintText;
  final String argLabelText;
  const InputTextDireccionWidget({
    super.key,
    required this.argHintText,
    required this.argLabelText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerDireccion = ref.watch(actualizarClienteDireccionProvider);

    String value = '';
    if (argLabelText == 'Calle principal') {
      value = providerDireccion.callePrincipal;
    } else if (argLabelText == 'Número de casa') {
      value = providerDireccion.numeroCasa;
    } else if (argLabelText == 'Calle secundaria') {
      value = providerDireccion.calleSecundaria;
    } else if (argLabelText == 'Sector') {
      value = providerDireccion.sector;
    } else if (argLabelText == 'Referencia') {
      value = providerDireccion.referencia;
    } else if (argLabelText == 'Latitud') {
      value = providerDireccion.latitud;
    } else if (argLabelText == 'Longitud') {
      value = providerDireccion.longitud;
    }

    return TextFormField(
      initialValue: value,
      autocorrect: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: argHintText,
        labelText: argLabelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      onChanged: (value) => ref.read(actualizarClienteDireccionProvider.notifier).onChangeInputText(value, argLabelText),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) return "Este campo es obligatorio";
        return null;
      },
    );
  }
}
