import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_actividad_economica_service.dart';

class InputTextActividadEconomicaCuentaWidget extends ConsumerWidget {
  final String argHintText;
  final String argLabelText;

  const InputTextActividadEconomicaCuentaWidget({
    super.key,
    required this.argHintText,
    required this.argLabelText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerActividadEconomica = ref.watch(actualizarClienteActividadEconomicaProvider);

    String value = providerActividadEconomica.codCiu;

    return TextFormField(
      initialValue: value,
      autocorrect: true,
      keyboardType: TextInputType.text,
      maxLength: 7,
      decoration: InputDecoration(
        hintText: argHintText,
        labelText: argLabelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        suffixIcon: providerActividadEconomica.isSearch
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onPressed: () async {
                    await ref.read(actualizarClienteActividadEconomicaProvider.notifier).getActividadEconomica();
                  },
                ),
              ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) return "Este campo es obligatorio";
        return null;
      },
      onChanged: (String? value) async {
        await ref.read(actualizarClienteActividadEconomicaProvider.notifier).onCodigoChange(value ?? '');
      },
    );
  }
}
