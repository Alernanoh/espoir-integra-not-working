import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_cuentas_recuperacion_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';

class DropdownTipoCuentaWidget extends ConsumerWidget {
  const DropdownTipoCuentaWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerCueRec = ref.watch(actualizarClienteCuentaRecuperacionProvider);
    final providerActCli = ref.watch(actualizarClienteProvider);

    return DropdownSearch<String>(
      popupProps: const PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: true,
        menuProps: MenuProps(),
      ),
      items: providerCueRec.cuentas,
      selectedItem: providerCueRec.cuentaName,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Tipo de cuenta',
          hintText: 'Seleccione un tipo de cuenta',
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
      validator: (String? value) {
        if (value == null) return "Este campo es obligatorio";
        return null;
      },
      onChanged: (String? value) async => ref.read(actualizarClienteCuentaRecuperacionProvider.notifier).onChangeTipoCuenta(
            value ?? '',
            providerActCli.tipoCuenta,
          ),
    );
  }
}
