import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

import 'package:integra_espoir/config/widgets.dart';

class HomeScreen extends ConsumerWidget {
  static const nameScreen = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Inicio'),
        bottom: const InternetStatusWidget(),
      ),
      drawer: const HomeDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Text(
              'INTEGRA',
              maxLines: 1,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Text(
              Environment.versionApp,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const Text(
              'Integra Espoir es la primera aplicación móvil desarrollada por el Departamento de Sistemas de Fundación Espoir, con el objetivo de permitir la interconexión digital de cada uno de los empleados con la organización a través de la entrega de herramientas para su trabajo diario así como facilidades en el acceso de información.',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
