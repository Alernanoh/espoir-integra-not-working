import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_datos_personales_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';

class DropdownEstadoCivilWidget extends ConsumerWidget {
  const DropdownEstadoCivilWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerPersonales = ref.watch(actualizarClienteDatosPersonalesProvider);
    final providerActCli = ref.watch(actualizarClienteProvider);

    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: true,
        menuProps: MenuProps(),
      ),
      items: providerPersonales.estadosCiviles,
      selectedItem: providerPersonales.estadoCivilName,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Estado civil',
          hintText: 'Seleccione una provincia',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
      validator: (String? value) {
        if (value == null) return "Este campo es obligatorio";
        return null;
      },
      onChanged: (String? value) async {
        final provPerEvent = ref.read(actualizarClienteDatosPersonalesProvider.notifier);

        provPerEvent.onChangeEstadoCivil(
          value ?? '',
          providerActCli.estadosCiviles,
        );
      },
    );
  }
}
