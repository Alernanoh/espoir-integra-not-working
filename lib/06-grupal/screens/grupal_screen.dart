import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/06-grupal/models/opciones_grupal_model.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/shared/widgets/drawer_widget.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/shared/widgets/internet_status_widget.dart';

class GrupalScreen extends StatelessWidget {
  static const nameScreen = 'GrupalScreen';
  const GrupalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OpcionesGrupalModel> opciones = [
      OpcionesGrupalModel(
        titulo: "Subida de documentos",
        icono: FontAwesomeIcons.fileArrowUp,
        ruta: GrupalSubidaDocumentosScreen.nameScreen,
      ),
    ];

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Grupal'),
        bottom: const InternetStatusWidget(),
      ),
      drawer: const HomeDrawerWidget(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        itemBuilder: (context, index) => _Opcion(
          argTitulo: opciones[index].titulo,
          argRuta: opciones[index].ruta,
          argIcon: opciones[index].icono,
        ),
        itemCount: opciones.length,
      ),
    );
  }
}

class _Opcion extends StatelessWidget {
  final String argTitulo;
  final String argRuta;
  final IconData argIcon;
  const _Opcion({
    required this.argTitulo,
    required this.argRuta,
    required this.argIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        iconColor: colorEspoirAzul,
        leading: IconButton(
          onPressed: () => context.push('/$argRuta'),
          icon: const Icon(FontAwesomeIcons.rightToBracket),
        ),
        title: Text(argTitulo),
        trailing: Icon(argIcon),
        splashColor: colorEspoirAmarrillo,
      ),
    );
  }
}
