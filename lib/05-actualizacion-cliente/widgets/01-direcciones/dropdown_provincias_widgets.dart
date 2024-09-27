import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/config/service/ubicacion.dart';

class DropdownProvinciasWidget extends ConsumerWidget {
  const DropdownProvinciasWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerDireccion = ref.watch(actualizarClienteDireccionProvider);

    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: true,
        menuProps: MenuProps(),
      ),
      items: providerDireccion.provincias,
      selectedItem: providerDireccion.provinciaName,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Provincia',
          hintText: 'Seleccione una provincia',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
      validator: (String? value) {
        if (value == null) return "Este campo es obligatorio";
        return null;
      },
      onChanged: (String? value) async {
        final providerUbicacion = ref.watch(ubicacionProvider);
        final provDirEvent = ref.read(actualizarClienteDireccionProvider.notifier);

        if (value != providerDireccion.provinciaName) {
          int code = providerUbicacion.provincias.firstWhere((element) => element.prvNombre == value).prvProvincia ?? 0;
          if (code != 0) {
            provDirEvent.onProvinciaChange(value ?? '', code);
          }
        }
      },
    );
  }
}
