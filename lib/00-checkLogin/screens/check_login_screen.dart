import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/00-checkLogin/services/check_login_provider.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/device_info.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CheckLoginScreen extends ConsumerStatefulWidget {
  static const nameScreen = 'checkLoginScreen';
  const CheckLoginScreen({super.key});

  @override
  CheckLoginScreenState createState() => CheckLoginScreenState();
}

class CheckLoginScreenState extends ConsumerState<CheckLoginScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(deviceInfoProvider.notifier).getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(deviceInfoProvider, (previous, next) {
      if (next.deviceId != '') {
        ref.read(checkLoginProvider.notifier).checkLogin(deviceId: next.deviceId, deviceInfo: next.deviceInfo);
      }
    });
    ref.listen(checkLoginProvider, (previous, next) {
      if (next.goLogin) {
        context.go('/${LoginScreen.nameScreen}');
      } else if (next.goHome) {
        context.go('/${HomeScreen.nameScreen}');
      } else {
        context.go('/${LoginScreen.nameScreen}');
      }
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoadingAnimationWidget.inkDrop(color: colorEspoirAmarrillo, size: 100),
        const Center(
          child: Padding(
            padding: EdgeInsets.all(100),
            child: Text(
              'Comprobando datos para inicio de sesión, esperé...',
              style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.none),
            ),
          ),
        ),
        OutlinedButton(
          style: TextButton.styleFrom(backgroundColor: colorEspoirAmarrillo),
          child: const Text('Ir al login'),
          onPressed: () {
            context.go('/LoginScreen');
          },
        ),
      ],
    );
  }
}
