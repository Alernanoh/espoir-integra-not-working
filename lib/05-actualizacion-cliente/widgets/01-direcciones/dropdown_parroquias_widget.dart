import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/config/service/ubicacion.dart';

class DropdownParroquiasWidget extends ConsumerWidget {
  const DropdownParroquiasWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerDireccion = ref.watch(actualizarClienteDireccionProvider);

    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: true,
        menuProps: MenuProps(),
      ),
      items: providerDireccion.parroquias,
      selectedItem: providerDireccion.parroquiasName,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Parroquia',
          hintText: 'Seleccione una parroquia',
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

        if (value != providerDireccion.parroquiasName) {
          int code = providerUbicacion.parroquias
                  .firstWhere((element) => element.parNombre == value && element.parCanton == providerActCli.cantonCode)
                  .parParroquia ??
              0;

          if (code != 0) {
            provDirEvent.onParroquiasChange(value ?? '', code);
          } else {
            provDirEvent.onErrorMessage('No se encontro el código de la parroquia');
          }
        }
      },
    );
  }
}
