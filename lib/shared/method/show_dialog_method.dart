import 'package:flutter/material.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Future<void> showMyDialog(BuildContext argContext, String argText) async {
  return showDialog(
    barrierDismissible: false,
    context: argContext,
    builder: (context) => PopScope(
      canPop: false,
      child: AlertDialog(
        title: Text(
          argText,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LoadingAnimationWidget.fallingDot(color: colorEspoirAzul, size: 100),
          ],
        ),
      ),
    ),
  );
}
