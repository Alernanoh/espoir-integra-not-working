import 'package:flutter/material.dart';

class ConsultaCarteraDataTableWidget extends StatelessWidget {
  final List argKeys;
  final List argValues;
  const ConsultaCarteraDataTableWidget({super.key, required this.argKeys, required this.argValues});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: argKeys.isNotEmpty
              ? DataTable(
                  columns: [
                    for (var item in argKeys)
                      DataColumn(
                        label: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                  rows: [
                    for (var item in argValues)
                      DataRow(cells: [
                        for (var element in item)
                          DataCell(
                            Text(element == null ? '' : element.toString()),
                          ),
                      ])
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
