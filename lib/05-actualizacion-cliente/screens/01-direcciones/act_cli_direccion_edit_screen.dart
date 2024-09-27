import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_direccion_provider.dart';
import 'package:integra_espoir/05-actualizacion-cliente/services/actualizar_cliente_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';
import 'package:integra_espoir/shared/method/show_dialog_method.dart';
import 'package:permission_handler/permission_handler.dart';

class ActualizarClienteDireccionEditScreen extends ConsumerWidget {
  static const nameScreen = '${ActualizarClienteScreen.nameScreen}/ActualizarClienteDireccionEditScreen';
  const ActualizarClienteDireccionEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tipo = GoRouterState.of(context).extra;
    final providerActCli = ref.watch(actualizarClienteProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(actualizarClienteDireccionProvider, (previous, next) {
      if (next.errorMessage.isNotEmpty) {
        showSnackBar(context, next.errorMessage, Colors.orange);
        context.pop();
      }
      if (next.dataGuardado) {
        WebServer().conectToLogsAuditoria(
          argLog: 15,
          argEntrada: providerActCli.cedula.value,
          argResultado: tipo == 'I' ? 'Dirección domicilio' : 'Dirección de negocio',
        );
        context.pop();
        context.pop();
      }
    });

    return Scaffold(
      backgroundColor: colorEspoirPlomo,
      appBar: AppBar(
        title: tipo == 'I' ? const Text('Editar domicilio') : const Text('Editar empleo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(FontAwesomeIcons.floppyDisk),
            onPressed: providerInternet != ConnectivityStatus.isConnected
                ? null
                : () {
                    showMyDialog(context, 'Guardando datos');
                    ref.read(actualizarClienteDireccionProvider.notifier).guardarDatos(providerActCli.idCliente, '$tipo');
                  },
          ),
          const SizedBox(width: 20),
        ],
        bottom: const InternetStatusWidget(),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                DropdownProvinciasWidget(),
                SizedBox(height: 10),
                DropdownCantonesWidget(),
                SizedBox(height: 10),
                DropdownParroquiasWidget(),
                SizedBox(height: 10),
                InputTextDireccionWidget(
                  argHintText: 'Ingrese una dirección',
                  argLabelText: 'Calle principal',
                ),
                SizedBox(height: 10),
                InputTextDireccionWidget(
                  argHintText: 'Ingrese el número de casa',
                  argLabelText: 'Número de casa',
                ),
                SizedBox(height: 10),
                InputTextDireccionWidget(
                  argHintText: 'Ingrese la calle secundaria',
                  argLabelText: 'Calle secundaria',
                ),
                SizedBox(height: 10),
                InputTextDireccionWidget(
                  argHintText: 'Ingrese el sector',
                  argLabelText: 'Sector',
                ),
                SizedBox(height: 10),
                InputTextDireccionWidget(
                  argHintText: 'Ingrese la referencia',
                  argLabelText: 'Referencia',
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _BtnCoordenadas(),
                    _BtnMapa(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Latitud'),
                ),
                _TextCoordenadas(isLatitud: true),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Longitud'),
                ),
                _TextCoordenadas(isLatitud: false),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TextCoordenadas extends ConsumerWidget {
  final bool isLatitud;
  const _TextCoordenadas({required this.isLatitud});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerDireccion = ref.watch(actualizarClienteDireccionProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        isLatitud ? providerDireccion.latitud : providerDireccion.longitud,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}

class _BtnMapa extends StatelessWidget {
  const _BtnMapa();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colorEspoirAzul),
      child: const Text(
        'Mapa',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () async {
        Geolocator.requestPermission();
        bool gpsEnabled = await Geolocator.isLocationServiceEnabled();
        if (gpsEnabled) {
          PermissionStatus gpsPermission = await Permission.location.request();
          switch (gpsPermission) {
            case PermissionStatus.granted:
              // ignore: use_build_context_synchronously
              context.push('/${ActualizarClienteDireccionMapsScreen.nameScreen}');
              break;
            case PermissionStatus.denied:
            case PermissionStatus.restricted:
            case PermissionStatus.limited:
            case PermissionStatus.permanentlyDenied:
            case PermissionStatus.provisional:
              openAppSettings();
              break;
          }
        } else {
          // ignore: use_build_context_synchronously
          showSnackBar(context, 'Active el GPS', Colors.orange);
        }
      },
    );
  }
}

class _BtnCoordenadas extends ConsumerWidget {
  const _BtnCoordenadas();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colorEspoirAzul),
      child: const Text(
        'Coordenadas',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () async {
        Geolocator.requestPermission();
        bool gpsEnabled = await Geolocator.isLocationServiceEnabled();
        if (gpsEnabled) {
          PermissionStatus gpsPermission = await Permission.location.request();
          switch (gpsPermission) {
            case PermissionStatus.granted:
              Position coordenadas = await Geolocator.getCurrentPosition();
              ref.read(actualizarClienteDireccionProvider.notifier).onChangeCoordenadas(
                    coordenadas.latitude.toString(),
                    coordenadas.longitude.toString(),
                  );
              break;
            case PermissionStatus.denied:
            case PermissionStatus.restricted:
            case PermissionStatus.limited:
            case PermissionStatus.permanentlyDenied:
            case PermissionStatus.provisional:
              openAppSettings();
              break;
          }
        } else {
          // ignore: use_build_context_synchronously
          showSnackBar(context, 'Active el GPS', Colors.orange);
        }
      },
    );
  }
}
