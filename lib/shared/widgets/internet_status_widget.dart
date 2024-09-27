import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/config/service/internet_provider.dart';

class InternetStatusWidget extends ConsumerWidget implements PreferredSizeWidget {
  const InternetStatusWidget({super.key});

  @override
  PreferredSize build(BuildContext context, WidgetRef ref) {
    final providerInternet = ref.watch(internetProvider);

    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: providerInternet == ConnectivityStatus.isConnected
          ? Container()
          : Container(
              width: double.infinity,
              color: Colors.red,
              child: const Text(
                'Sin conexión a internet',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
