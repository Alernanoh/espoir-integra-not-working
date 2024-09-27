import 'package:flutter/material.dart';
import 'package:integra_espoir/shared/widgets/cards_widgets.dart';

Future<void> showMyModalBottom(BuildContext argContext, String argTitulo, String argValor) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    context: argContext,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LabelTitleWidget(argTitle: argTitulo),
            LabelValueWidget(argValue: argValor),
            const SizedBox(height: 40),
          ],
        ),
      );
    },
  );
}
