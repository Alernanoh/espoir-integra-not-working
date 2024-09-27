import 'package:flutter/material.dart';
import 'package:integra_espoir/config/theme/app_theme.dart';

class CardTitleWidget extends StatelessWidget {
  final String argTitle;
  const CardTitleWidget({super.key, required this.argTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Text(
          argTitle,
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class CardValueWidget extends StatelessWidget {
  final String argValue;
  const CardValueWidget({super.key, required this.argValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorEspoirPlomo),
        child: Text(
          argValue,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: colorEspoirAzul,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class CardValueAlertWidget extends StatelessWidget {
  final String argValue;
  final int argColor;
  const CardValueAlertWidget({super.key, required this.argValue, required this.argColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: argColor == 1 ? Colors.red : colorEspoirPlomo,
        ),
        child: Text(
          argValue,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: argColor == 1 ? Colors.white : colorEspoirAzul,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class LabelTitleWidget extends StatelessWidget {
  final String argTitle;
  const LabelTitleWidget({super.key, required this.argTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        argTitle,
        textAlign: TextAlign.left,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}

class LabelValueWidget extends StatelessWidget {
  final String argValue;
  const LabelValueWidget({super.key, required this.argValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorEspoirPlomo),
      child: Text(
        argValue,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: colorEspoirAzul,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
