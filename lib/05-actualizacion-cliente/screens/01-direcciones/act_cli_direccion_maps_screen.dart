import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class ActualizarClienteDireccionMapsScreen extends ConsumerStatefulWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteDireccionMapsScreen';
  const ActualizarClienteDireccionMapsScreen({super.key});

  @override
  ActualizarClienteDireccionMapsScreenState createState() => ActualizarClienteDireccionMapsScreenState();
}

class ActualizarClienteDireccionMapsScreenState extends ConsumerState<ActualizarClienteDireccionMapsScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-0.174449, -78.487461),
    zoom: 17.5,
  );
  double valLatitud = 0;
  double valLongitud = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: const Text('Mapa'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.check),
            onPressed: () {
              ref.read(actualizarClienteDireccionProvider.notifier).onChangeCoordenadas(
                    valLatitud.toString(),
                    valLongitud.toString(),
                  );
              context.pop();
            },
          ),
          const SizedBox(width: 20),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            onCameraMove: (position) {
              valLatitud = position.target.latitude;
              valLongitud = position.target.longitude;
            },
          ),
          const Center(
            child: Icon(
              FontAwesomeIcons.mapPin,
              color: Colors.red,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
