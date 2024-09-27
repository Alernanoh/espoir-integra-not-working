import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String argMessage, Color argColor) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        argMessage,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      action: SnackBarAction(
        label: 'Cerrar',
        textColor: Colors.white,
        onPressed: () {},
      ),
      backgroundColor: argColor,
    ),
  );
}
