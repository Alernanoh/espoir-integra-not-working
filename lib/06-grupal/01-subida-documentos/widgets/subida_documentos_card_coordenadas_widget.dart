import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/services/subida_documentos_grupo_service.dart';

class GrupalSubidaDocumentosCardCoordenadasWidget extends ConsumerWidget {
  const GrupalSubidaDocumentosCardCoordenadasWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerGrupo = ref.watch(grupalSubDocGrupoProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Text('Latitud')),
                  ),
                  _TextCoordenadas(
                    value: providerGrupo.latitud,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Text('Longitud')),
                  ),
                  _TextCoordenadas(
                    value: providerGrupo.longitud,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextCoordenadas extends StatelessWidget {
  final double value;
  const _TextCoordenadas({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$value',
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
