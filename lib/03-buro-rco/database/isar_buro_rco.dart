import 'dart:convert';
import 'package:isar/isar.dart';

//RCO
part '../models/rco/rco_head_model.dart';
part '../models/rco/rco_info_model.dart';
//BURO
part '../models/buro/buro_aval_model.dart';
part '../models/buro/buro_head_model.dart';
part '../models/buro/buro_resumen_model.dart';
part '../models/buro/buro_ifis_model.dart';
part '../models/buro/buro_cuentas_corrientes_model.dart';
part '../models/buro/buro_grafico_model.dart';

//ISAR
part 'isar_buro_rco.g.dart';

@collection
class IsarBuroRco {
  Id id = Isar.autoIncrement;
  final String cedula;
  final String cliente;
  final DateTime fecha;
  final List<ModelRcoHeadData> rcoHead;
  final List<ModelRcoInfoData> rcoInfo;
  final List<ModelBuroAvalData> buroAval;
  final List<ModelBuroHeadData> buroHead;
  final List<ModelBuroResumenData> buroResumen;
  final List<ModelBuroIfisData> buroIfis;
  final List<ModelBuroCuentasCorrientesData> buroCuentasCorrientes;
  final List<ModelBuroGraficoData> buroGrafico;

  IsarBuroRco({
    required this.cedula,
    required this.cliente,
    required this.fecha,
    required this.rcoHead,
    required this.rcoInfo,
    required this.buroAval,
    required this.buroHead,
    required this.buroResumen,
    required this.buroIfis,
    required this.buroCuentasCorrientes,
    required this.buroGrafico,
  });
}
