import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_datos_personales_provider.dart';
import 'package:intl/intl.dart';

class InputDateDatosPersonalesWidget extends ConsumerWidget {
  const InputDateDatosPersonalesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerPersonales = ref.watch(actualizarClienteDatosPersonalesProvider);

    return ListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black38, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(DateFormat('yyyy-MM-dd').format(providerPersonales.fechaNacimiento)),
      trailing: const Icon(FontAwesomeIcons.calendar),
      onTap: () async {
        DateTime? pickerdate = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(1900),
          lastDate: DateTime(2020),
        );
        await ref.read(actualizarClienteDatosPersonalesProvider.notifier).onChangeFechaNacimiento(pickerdate ?? DateTime.now());
      },
    );
  }
}
