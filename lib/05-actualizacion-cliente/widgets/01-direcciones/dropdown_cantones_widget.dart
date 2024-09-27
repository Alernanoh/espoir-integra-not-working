import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/config/service/ubicacion.dart';

class DropdownCantonesWidget extends ConsumerWidget {
  const DropdownCantonesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerDireccion = ref.watch(actualizarClienteDireccionProvider);

    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: true,
        menuProps: MenuProps(),
      ),
      items: providerDireccion.cantones,
      selectedItem: providerDireccion.cantonName,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Canton',
          hintText: 'Seleccione un canton',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
      validator: (String? value) {
        if (value == null) return "Este campo es obligatorio";
        return null;
      },
      onChanged: (value) async {
        final providerUbicacion = ref.watch(ubicacionProvider);
        final providerActCli = ref.watch(actualizarClienteDireccionProvider);
        final provDirEvent = ref.read(actualizarClienteDireccionProvider.notifier);
        if (value != providerDireccion.cantonName) {
          int code = providerUbicacion.cantones
                  .firstWhere((element) => element.cntNombre == value && element.cntProvincia == providerActCli.provinciaCode)
                  .cntCanton ??
              0;
          if (code != 0) {
            provDirEvent.onCantonesChange(value ?? '', code);
          } else {
            provDirEvent.onErrorMessage('No se encontro el código del canton');
          }
        }
      },
    );
  }
}
