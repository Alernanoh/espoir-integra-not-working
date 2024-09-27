class ModelBuroOpen {
  final String? titulo;
  final String? valor;
  final int? alerta;

  ModelBuroOpen({
    this.titulo,
    this.valor,
    this.alerta,
  });
}

class ModelBuroHistoricoPanel {
  final String titulo;
  final List<ModelBuroOpen> table;
  final bool alert;

  ModelBuroHistoricoPanel({
    required this.titulo,
    required this.table,
    this.alert = false,
  });
}
