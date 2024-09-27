class ModelGrupalPathTipo {
  final String path;
  final int tipo;
  final int cambio;
  final String? observacion;

  ModelGrupalPathTipo({
    required this.path,
    required this.tipo,
    required this.cambio,
    this.observacion,
  });
}
