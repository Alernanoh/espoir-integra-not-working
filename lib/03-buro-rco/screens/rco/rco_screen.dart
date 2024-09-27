import 'package:flutter/material.dart';
import 'package:integra_espoir/03-buro-rco/database/isar_buro_rco.dart';
import 'package:integra_espoir/03-buro-rco/widgets/rco/rco_head_widget.dart';
import 'package:integra_espoir/03-buro-rco/widgets/rco/rco_info_widget.dart';

class RcoScreen extends StatelessWidget {
  final List<ModelRcoHeadData> argHead;
  final List<ModelRcoInfoData> argInfo;
  const RcoScreen({super.key, required this.argHead, required this.argInfo});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        children: [
          argHead.isNotEmpty
              ? RcoHeadWidget(
                  argData: argHead.first,
                )
              : Container(),
          const SizedBox(height: 20),
          for (var item in argInfo) RcoInfoWidget(argData: item),
        ],
      ),
    );
  }
}
