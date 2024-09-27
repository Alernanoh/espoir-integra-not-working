import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/01-login/services/login_provider.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/device_info.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';
import 'package:integra_espoir/config/service/snack_bar_alert.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:integra_espoir/config/widgets.dart';

class FormularioLoginWidget extends ConsumerWidget {
  const FormularioLoginWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerLogin = ref.watch(loginProvider);
    final providerInternet = ref.watch(internetProvider);

    ref.listen(loginProvider, (previous, next) {
      if (next.isLoginCorrect) context.go('/${HomeScreen.nameScreen}');
      if (next.isPosting && next.errorMessage != "") showSnackBar(context, next.errorMessage, Colors.orange);
    });

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 200),
          _CustomInputUser(
            argLabel: 'Usuario',
            argHint: 'Ingrese el usuario',
            argInputType: TextInputType.text,
            argObscureText: false,
            argInputAction: TextInputAction.next,
            argOnChanged: ref.read(loginProvider.notifier).onUsuarioChange,
            argErrorMessage: providerLogin.isFormPosted ? providerLogin.usuario.errorMessage : null,
            argIcon: FontAwesomeIcons.userTie,
          ),
          const SizedBox(height: 15),
          _CustomInputUser(
            argLabel: 'Clave',
            argHint: 'Ingrese la clave',
            argInputType: TextInputType.text,
            argObscureText: true,
            argInputAction: TextInputAction.done,
            argOnChanged: ref.read(loginProvider.notifier).onClaveChange,
            argErrorMessage: providerLogin.isFormPosted ? providerLogin.clave.errorMessage : null,
            argIcon: FontAwesomeIcons.lock,
          ),
          const SizedBox(height: 20),
          providerInternet == ConnectivityStatus.isConnected
              ? _BtnOnline(
                  argOnPressed: providerLogin.isPosting
                      ? null
                      : () {
                          final deviceId = ref.read(deviceInfoProvider).deviceId;
                          final deviceInfo = ref.read(deviceInfoProvider).deviceInfo;
                          ref.read(loginProvider.notifier).onEventLogin(argDeviceId: deviceId, argDeviceInfo: deviceInfo);
                        },
                )
              : OutlinedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
                  onPressed: null,
                  child: const Text('Sin internet'),
                ),
          const SizedBox(height: 20),
          const LoginDeviceIdWidget(),
          const SizedBox(height: 20),
          Environment.apiUrl == "https://sis.espoir.org.ec/api"
              ? const Text('')
              : const Text(
                  'Pruebas',
                  style: TextStyle(fontSize: 10),
                )
        ],
      ),
    );
  }
}

class _CustomInputUser extends StatelessWidget {
  final String argLabel;
  final String argHint;
  final TextInputType argInputType;
  final bool argObscureText;
  final TextInputAction argInputAction;
  final Function(String) argOnChanged;
  final String? argErrorMessage;
  final IconData argIcon;

  const _CustomInputUser({
    required this.argLabel,
    required this.argHint,
    required this.argInputType,
    required this.argObscureText,
    required this.argInputAction,
    required this.argOnChanged,
    this.argErrorMessage,
    required this.argIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      keyboardType: argInputType,
      cursorColor: colorEspoirAmarrillo,
      textInputAction: argInputAction,
      obscureText: argObscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        icon: Icon(argIcon),
        iconColor: Colors.white,
        hintText: argHint,
        hintStyle: const TextStyle(color: Colors.white),
        label: Text(argLabel),
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: colorEspoirAmarrillo, width: 2.5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.5),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2.5),
          borderRadius: BorderRadius.circular(20),
        ),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 15),
        errorText: argErrorMessage,
      ),
      onChanged: argOnChanged,
    );
  }
}

class _BtnOnline extends StatelessWidget {
  final void Function()? argOnPressed;
  const _BtnOnline({required this.argOnPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: TextButton.styleFrom(
          backgroundColor: colorEspoirAzul,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      onPressed: argOnPressed,
      child: const Text(
        'Ingresar',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
