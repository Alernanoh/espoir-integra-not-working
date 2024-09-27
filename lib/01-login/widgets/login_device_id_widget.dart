import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integra_espoir/config/service/device_info.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

class LoginDeviceIdWidget extends ConsumerStatefulWidget {
  const LoginDeviceIdWidget({super.key});

  @override
  LoginDeviceIdWidgetState createState() => LoginDeviceIdWidgetState();
}

class LoginDeviceIdWidgetState extends ConsumerState<LoginDeviceIdWidget> {
  @override
  void initState() {
    super.initState();
    ref.read(deviceInfoProvider.notifier).getDeviceInfo();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final providerDeviceId = ref.watch(deviceInfoProvider);
    final loading = ref.read(deviceInfoProvider.notifier).isLoading;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        loading
            ? const CircularProgressIndicator(
                color: colorEspoirAmarrillo,
              )
            : SizedBox(
                width: size.width * 0.5,
                child: Text(
                  providerDeviceId.deviceId,
                  maxLines: 2,
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
        SizedBox(width: size.width * 0.1),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              backgroundColor: colorEspoirPlomo),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: providerDeviceId.deviceId));
            showSnackBar(context, 'Texto copiado', Colors.green);
          },
          child: const Column(
            children: [
              Icon(FontAwesomeIcons.solidCopy, color: Colors.black87),
              Text(
                'Copiar',
                style: TextStyle(color: Colors.black87),
              ),
            ],
          ),
        )
      ],
    );
  }
}
