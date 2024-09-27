// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_buro_rco.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarBuroRcoCollection on Isar {
  IsarCollection<IsarBuroRco> get isarBuroRcos => this.collection();
}

const IsarBuroRcoSchema = CollectionSchema(
  name: r'IsarBuroRco',
  id: -8160322685863555350,
  properties: {
    r'buroAval': PropertySchema(
      id: 0,
      name: r'buroAval',
      type: IsarType.objectList,
      target: r'ModelBuroAvalData',
    ),
    r'buroCuentasCorrientes': PropertySchema(
      id: 1,
      name: r'buroCuentasCorrientes',
      type: IsarType.objectList,
      target: r'ModelBuroCuentasCorrientesData',
    ),
    r'buroGrafico': PropertySchema(
      id: 2,
      name: r'buroGrafico',
      type: IsarType.objectList,
      target: r'ModelBuroGraficoData',
    ),
    r'buroHead': PropertySchema(
      id: 3,
      name: r'buroHead',
      type: IsarType.objectList,
      target: r'ModelBuroHeadData',
    ),
    r'buroIfis': PropertySchema(
      id: 4,
      name: r'buroIfis',
      type: IsarType.objectList,
      target: r'ModelBuroIfisData',
    ),
    r'buroResumen': PropertySchema(
      id: 5,
      name: r'buroResumen',
      type: IsarType.objectList,
      target: r'ModelBuroResumenData',
    ),
    r'cedula': PropertySchema(
      id: 6,
      name: r'cedula',
      type: IsarType.string,
    ),
    r'cliente': PropertySchema(
      id: 7,
      name: r'cliente',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 8,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'rcoHead': PropertySchema(
      id: 9,
      name: r'rcoHead',
      type: IsarType.objectList,
      target: r'ModelRcoHeadData',
    ),
    r'rcoInfo': PropertySchema(
      id: 10,
      name: r'rcoInfo',
      type: IsarType.objectList,
      target: r'ModelRcoInfoData',
    )
  },
  estimateSize: _isarBuroRcoEstimateSize,
  serialize: _isarBuroRcoSerialize,
  deserialize: _isarBuroRcoDeserialize,
  deserializeProp: _isarBuroRcoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ModelRcoHeadData': ModelRcoHeadDataSchema,
    r'ModelRcoInfoData': ModelRcoInfoDataSchema,
    r'ModelBuroAvalData': ModelBuroAvalDataSchema,
    r'ModelBuroHeadData': ModelBuroHeadDataSchema,
    r'ModelBuroResumenData': ModelBuroResumenDataSchema,
    r'ModelBuroIfisData': ModelBuroIfisDataSchema,
    r'ModelBuroCuentasCorrientesData': ModelBuroCuentasCorrientesDataSchema,
    r'ModelBuroGraficoData': ModelBuroGraficoDataSchema
  },
  getId: _isarBuroRcoGetId,
  getLinks: _isarBuroRcoGetLinks,
  attach: _isarBuroRcoAttach,
  version: '3.1.0+1',
);

int _isarBuroRcoEstimateSize(
  IsarBuroRco object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.buroAval.length * 3;
  {
    final offsets = allOffsets[ModelBuroAvalData]!;
    for (var i = 0; i < object.buroAval.length; i++) {
      final value = object.buroAval[i];
      bytesCount +=
          ModelBuroAvalDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.buroCuentasCorrientes.length * 3;
  {
    final offsets = allOffsets[ModelBuroCuentasCorrientesData]!;
    for (var i = 0; i < object.buroCuentasCorrientes.length; i++) {
      final value = object.buroCuentasCorrientes[i];
      bytesCount += ModelBuroCuentasCorrientesDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.buroGrafico.length * 3;
  {
    final offsets = allOffsets[ModelBuroGraficoData]!;
    for (var i = 0; i < object.buroGrafico.length; i++) {
      final value = object.buroGrafico[i];
      bytesCount +=
          ModelBuroGraficoDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.buroHead.length * 3;
  {
    final offsets = allOffsets[ModelBuroHeadData]!;
    for (var i = 0; i < object.buroHead.length; i++) {
      final value = object.buroHead[i];
      bytesCount +=
          ModelBuroHeadDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.buroIfis.length * 3;
  {
    final offsets = allOffsets[ModelBuroIfisData]!;
    for (var i = 0; i < object.buroIfis.length; i++) {
      final value = object.buroIfis[i];
      bytesCount +=
          ModelBuroIfisDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.buroResumen.length * 3;
  {
    final offsets = allOffsets[ModelBuroResumenData]!;
    for (var i = 0; i < object.buroResumen.length; i++) {
      final value = object.buroResumen[i];
      bytesCount +=
          ModelBuroResumenDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.cedula.length * 3;
  bytesCount += 3 + object.cliente.length * 3;
  bytesCount += 3 + object.rcoHead.length * 3;
  {
    final offsets = allOffsets[ModelRcoHeadData]!;
    for (var i = 0; i < object.rcoHead.length; i++) {
      final value = object.rcoHead[i];
      bytesCount +=
          ModelRcoHeadDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.rcoInfo.length * 3;
  {
    final offsets = allOffsets[ModelRcoInfoData]!;
    for (var i = 0; i < object.rcoInfo.length; i++) {
      final value = object.rcoInfo[i];
      bytesCount +=
          ModelRcoInfoDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarBuroRcoSerialize(
  IsarBuroRco object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ModelBuroAvalData>(
    offsets[0],
    allOffsets,
    ModelBuroAvalDataSchema.serialize,
    object.buroAval,
  );
  writer.writeObjectList<ModelBuroCuentasCorrientesData>(
    offsets[1],
    allOffsets,
    ModelBuroCuentasCorrientesDataSchema.serialize,
    object.buroCuentasCorrientes,
  );
  writer.writeObjectList<ModelBuroGraficoData>(
    offsets[2],
    allOffsets,
    ModelBuroGraficoDataSchema.serialize,
    object.buroGrafico,
  );
  writer.writeObjectList<ModelBuroHeadData>(
    offsets[3],
    allOffsets,
    ModelBuroHeadDataSchema.serialize,
    object.buroHead,
  );
  writer.writeObjectList<ModelBuroIfisData>(
    offsets[4],
    allOffsets,
    ModelBuroIfisDataSchema.serialize,
    object.buroIfis,
  );
  writer.writeObjectList<ModelBuroResumenData>(
    offsets[5],
    allOffsets,
    ModelBuroResumenDataSchema.serialize,
    object.buroResumen,
  );
  writer.writeString(offsets[6], object.cedula);
  writer.writeString(offsets[7], object.cliente);
  writer.writeDateTime(offsets[8], object.fecha);
  writer.writeObjectList<ModelRcoHeadData>(
    offsets[9],
    allOffsets,
    ModelRcoHeadDataSchema.serialize,
    object.rcoHead,
  );
  writer.writeObjectList<ModelRcoInfoData>(
    offsets[10],
    allOffsets,
    ModelRcoInfoDataSchema.serialize,
    object.rcoInfo,
  );
}

IsarBuroRco _isarBuroRcoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarBuroRco(
    buroAval: reader.readObjectList<ModelBuroAvalData>(
          offsets[0],
          ModelBuroAvalDataSchema.deserialize,
          allOffsets,
          ModelBuroAvalData(),
        ) ??
        [],
    buroCuentasCorrientes:
        reader.readObjectList<ModelBuroCuentasCorrientesData>(
              offsets[1],
              ModelBuroCuentasCorrientesDataSchema.deserialize,
              allOffsets,
              ModelBuroCuentasCorrientesData(),
            ) ??
            [],
    buroGrafico: reader.readObjectList<ModelBuroGraficoData>(
          offsets[2],
          ModelBuroGraficoDataSchema.deserialize,
          allOffsets,
          ModelBuroGraficoData(),
        ) ??
        [],
    buroHead: reader.readObjectList<ModelBuroHeadData>(
          offsets[3],
          ModelBuroHeadDataSchema.deserialize,
          allOffsets,
          ModelBuroHeadData(),
        ) ??
        [],
    buroIfis: reader.readObjectList<ModelBuroIfisData>(
          offsets[4],
          ModelBuroIfisDataSchema.deserialize,
          allOffsets,
          ModelBuroIfisData(),
        ) ??
        [],
    buroResumen: reader.readObjectList<ModelBuroResumenData>(
          offsets[5],
          ModelBuroResumenDataSchema.deserialize,
          allOffsets,
          ModelBuroResumenData(),
        ) ??
        [],
    cedula: reader.readString(offsets[6]),
    cliente: reader.readString(offsets[7]),
    fecha: reader.readDateTime(offsets[8]),
    rcoHead: reader.readObjectList<ModelRcoHeadData>(
          offsets[9],
          ModelRcoHeadDataSchema.deserialize,
          allOffsets,
          ModelRcoHeadData(),
        ) ??
        [],
    rcoInfo: reader.readObjectList<ModelRcoInfoData>(
          offsets[10],
          ModelRcoInfoDataSchema.deserialize,
          allOffsets,
          ModelRcoInfoData(),
        ) ??
        [],
  );
  object.id = id;
  return object;
}

P _isarBuroRcoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ModelBuroAvalData>(
            offset,
            ModelBuroAvalDataSchema.deserialize,
            allOffsets,
            ModelBuroAvalData(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<ModelBuroCuentasCorrientesData>(
            offset,
            ModelBuroCuentasCorrientesDataSchema.deserialize,
            allOffsets,
            ModelBuroCuentasCorrientesData(),
          ) ??
          []) as P;
    case 2:
      return (reader.readObjectList<ModelBuroGraficoData>(
            offset,
            ModelBuroGraficoDataSchema.deserialize,
            allOffsets,
            ModelBuroGraficoData(),
          ) ??
          []) as P;
    case 3:
      return (reader.readObjectList<ModelBuroHeadData>(
            offset,
            ModelBuroHeadDataSchema.deserialize,
            allOffsets,
            ModelBuroHeadData(),
          ) ??
          []) as P;
    case 4:
      return (reader.readObjectList<ModelBuroIfisData>(
            offset,
            ModelBuroIfisDataSchema.deserialize,
            allOffsets,
            ModelBuroIfisData(),
          ) ??
          []) as P;
    case 5:
      return (reader.readObjectList<ModelBuroResumenData>(
            offset,
            ModelBuroResumenDataSchema.deserialize,
            allOffsets,
            ModelBuroResumenData(),
          ) ??
          []) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readObjectList<ModelRcoHeadData>(
            offset,
            ModelRcoHeadDataSchema.deserialize,
            allOffsets,
            ModelRcoHeadData(),
          ) ??
          []) as P;
    case 10:
      return (reader.readObjectList<ModelRcoInfoData>(
            offset,
            ModelRcoInfoDataSchema.deserialize,
            allOffsets,
            ModelRcoInfoData(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarBuroRcoGetId(IsarBuroRco object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarBuroRcoGetLinks(IsarBuroRco object) {
  return [];
}

void _isarBuroRcoAttach(
    IsarCollection<dynamic> col, Id id, IsarBuroRco object) {
  object.id = id;
}

extension IsarBuroRcoQueryWhereSort
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QWhere> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarBuroRcoQueryWhere
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QWhereClause> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarBuroRcoQueryFilter
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QFilterCondition> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroAvalLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroAval',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroCuentasCorrientes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroGrafico',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroHeadLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroHead',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroIfisLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroIfis',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'buroResumen',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      cedulaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cedula',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      cedulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> cedulaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cedula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      cedulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      cedulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      clienteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cliente',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      clienteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> clienteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cliente',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      clienteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cliente',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      clienteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cliente',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> fechaEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      fechaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> fechaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> fechaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoHeadLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoHead',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      rcoInfoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rcoInfo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarBuroRcoQueryObject
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QFilterCondition> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> buroAvalElement(
      FilterQuery<ModelBuroAvalData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroAval');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroCuentasCorrientesElement(
          FilterQuery<ModelBuroCuentasCorrientesData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroCuentasCorrientes');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroGraficoElement(FilterQuery<ModelBuroGraficoData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroGrafico');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> buroHeadElement(
      FilterQuery<ModelBuroHeadData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroHead');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> buroIfisElement(
      FilterQuery<ModelBuroIfisData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroIfis');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition>
      buroResumenElement(FilterQuery<ModelBuroResumenData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'buroResumen');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> rcoHeadElement(
      FilterQuery<ModelRcoHeadData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rcoHead');
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterFilterCondition> rcoInfoElement(
      FilterQuery<ModelRcoInfoData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rcoInfo');
    });
  }
}

extension IsarBuroRcoQueryLinks
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QFilterCondition> {}

extension IsarBuroRcoQuerySortBy
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QSortBy> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByCedula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByCedulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.desc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.desc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }
}

extension IsarBuroRcoQuerySortThenBy
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QSortThenBy> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByCedula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByCedulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.desc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.desc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension IsarBuroRcoQueryWhereDistinct
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QDistinct> {
  QueryBuilder<IsarBuroRco, IsarBuroRco, QDistinct> distinctByCedula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cedula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QDistinct> distinctByCliente(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cliente', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBuroRco, IsarBuroRco, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }
}

extension IsarBuroRcoQueryProperty
    on QueryBuilder<IsarBuroRco, IsarBuroRco, QQueryProperty> {
  QueryBuilder<IsarBuroRco, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroAvalData>, QQueryOperations>
      buroAvalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroAval');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroCuentasCorrientesData>,
      QQueryOperations> buroCuentasCorrientesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroCuentasCorrientes');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroGraficoData>, QQueryOperations>
      buroGraficoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroGrafico');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroHeadData>, QQueryOperations>
      buroHeadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroHead');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroIfisData>, QQueryOperations>
      buroIfisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroIfis');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelBuroResumenData>, QQueryOperations>
      buroResumenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buroResumen');
    });
  }

  QueryBuilder<IsarBuroRco, String, QQueryOperations> cedulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cedula');
    });
  }

  QueryBuilder<IsarBuroRco, String, QQueryOperations> clienteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cliente');
    });
  }

  QueryBuilder<IsarBuroRco, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelRcoHeadData>, QQueryOperations>
      rcoHeadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcoHead');
    });
  }

  QueryBuilder<IsarBuroRco, List<ModelRcoInfoData>, QQueryOperations>
      rcoInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcoInfo');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelRcoHeadDataSchema = Schema(
  name: r'ModelRcoHeadData',
  id: 6110562328747658292,
  properties: {
    r'calificacionCli': PropertySchema(
      id: 0,
      name: r'calificacionCli',
      type: IsarType.string,
    ),
    r'edad': PropertySchema(
      id: 1,
      name: r'edad',
      type: IsarType.long,
    ),
    r'identificacion': PropertySchema(
      id: 2,
      name: r'identificacion',
      type: IsarType.string,
    ),
    r'nombre': PropertySchema(
      id: 3,
      name: r'nombre',
      type: IsarType.string,
    )
  },
  estimateSize: _modelRcoHeadDataEstimateSize,
  serialize: _modelRcoHeadDataSerialize,
  deserialize: _modelRcoHeadDataDeserialize,
  deserializeProp: _modelRcoHeadDataDeserializeProp,
);

int _modelRcoHeadDataEstimateSize(
  ModelRcoHeadData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.calificacionCli;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.identificacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelRcoHeadDataSerialize(
  ModelRcoHeadData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.calificacionCli);
  writer.writeLong(offsets[1], object.edad);
  writer.writeString(offsets[2], object.identificacion);
  writer.writeString(offsets[3], object.nombre);
}

ModelRcoHeadData _modelRcoHeadDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelRcoHeadData(
    calificacionCli: reader.readStringOrNull(offsets[0]),
    edad: reader.readLongOrNull(offsets[1]),
    identificacion: reader.readStringOrNull(offsets[2]),
    nombre: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _modelRcoHeadDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelRcoHeadDataQueryFilter
    on QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QFilterCondition> {
  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'calificacionCli',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'calificacionCli',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calificacionCli',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'calificacionCli',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'calificacionCli',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calificacionCli',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      calificacionCliIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'calificacionCli',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'edad',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'edad',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edad',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edad',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edad',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      edadBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'identificacion',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'identificacion',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'identificacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'identificacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'identificacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identificacion',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      identificacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'identificacion',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }
}

extension ModelRcoHeadDataQueryObject
    on QueryBuilder<ModelRcoHeadData, ModelRcoHeadData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelRcoInfoDataSchema = Schema(
  name: r'ModelRcoInfoData',
  id: 2778242068811607835,
  properties: {
    r'creCredito': PropertySchema(
      id: 0,
      name: r'creCredito',
      type: IsarType.string,
    ),
    r'creMonto': PropertySchema(
      id: 1,
      name: r'creMonto',
      type: IsarType.double,
    ),
    r'creSaldo': PropertySchema(
      id: 2,
      name: r'creSaldo',
      type: IsarType.double,
    ),
    r'diasMora': PropertySchema(
      id: 3,
      name: r'diasMora',
      type: IsarType.long,
    ),
    r'producto': PropertySchema(
      id: 4,
      name: r'producto',
      type: IsarType.string,
    ),
    r'saldoVencido': PropertySchema(
      id: 5,
      name: r'saldoVencido',
      type: IsarType.double,
    ),
    r'saldoXVencer': PropertySchema(
      id: 6,
      name: r'saldoXVencer',
      type: IsarType.double,
    ),
    r'segmento': PropertySchema(
      id: 7,
      name: r'segmento',
      type: IsarType.string,
    ),
    r'tipo': PropertySchema(
      id: 8,
      name: r'tipo',
      type: IsarType.string,
    )
  },
  estimateSize: _modelRcoInfoDataEstimateSize,
  serialize: _modelRcoInfoDataSerialize,
  deserialize: _modelRcoInfoDataDeserialize,
  deserializeProp: _modelRcoInfoDataDeserializeProp,
);

int _modelRcoInfoDataEstimateSize(
  ModelRcoInfoData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.creCredito;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.producto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.segmento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelRcoInfoDataSerialize(
  ModelRcoInfoData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.creCredito);
  writer.writeDouble(offsets[1], object.creMonto);
  writer.writeDouble(offsets[2], object.creSaldo);
  writer.writeLong(offsets[3], object.diasMora);
  writer.writeString(offsets[4], object.producto);
  writer.writeDouble(offsets[5], object.saldoVencido);
  writer.writeDouble(offsets[6], object.saldoXVencer);
  writer.writeString(offsets[7], object.segmento);
  writer.writeString(offsets[8], object.tipo);
}

ModelRcoInfoData _modelRcoInfoDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelRcoInfoData(
    creCredito: reader.readStringOrNull(offsets[0]),
    creMonto: reader.readDoubleOrNull(offsets[1]),
    creSaldo: reader.readDoubleOrNull(offsets[2]),
    diasMora: reader.readLongOrNull(offsets[3]),
    producto: reader.readStringOrNull(offsets[4]),
    saldoVencido: reader.readDoubleOrNull(offsets[5]),
    saldoXVencer: reader.readDoubleOrNull(offsets[6]),
    segmento: reader.readStringOrNull(offsets[7]),
    tipo: reader.readStringOrNull(offsets[8]),
  );
  return object;
}

P _modelRcoInfoDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelRcoInfoDataQueryFilter
    on QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QFilterCondition> {
  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creCredito',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creCredito',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creCredito',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'creCredito',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creCredito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creCreditoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'creCredito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creMonto',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creMonto',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creMonto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creMonto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creMonto',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creMontoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creMonto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creSaldo',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creSaldo',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creSaldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creSaldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creSaldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      creSaldoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creSaldo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diasMora',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diasMora',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasMora',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diasMora',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diasMora',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      diasMoraBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diasMora',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'producto',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'producto',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'producto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'producto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'producto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      productoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'producto',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saldoVencido',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saldoVencido',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saldoVencido',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saldoVencido',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saldoVencido',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoVencidoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saldoVencido',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saldoXVencer',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saldoXVencer',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saldoXVencer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saldoXVencer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saldoXVencer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      saldoXVencerBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saldoXVencer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'segmento',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'segmento',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'segmento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'segmento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'segmento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'segmento',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      segmentoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'segmento',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QAfterFilterCondition>
      tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }
}

extension ModelRcoInfoDataQueryObject
    on QueryBuilder<ModelRcoInfoData, ModelRcoInfoData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroAvalDataSchema = Schema(
  name: r'ModelBuroAvalData',
  id: -7507569617325634266,
  properties: {
    r'idConsulta': PropertySchema(
      id: 0,
      name: r'idConsulta',
      type: IsarType.long,
    ),
    r'mensaje': PropertySchema(
      id: 1,
      name: r'mensaje',
      type: IsarType.string,
    ),
    r'resultado': PropertySchema(
      id: 2,
      name: r'resultado',
      type: IsarType.long,
    )
  },
  estimateSize: _modelBuroAvalDataEstimateSize,
  serialize: _modelBuroAvalDataSerialize,
  deserialize: _modelBuroAvalDataDeserialize,
  deserializeProp: _modelBuroAvalDataDeserializeProp,
);

int _modelBuroAvalDataEstimateSize(
  ModelBuroAvalData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mensaje;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelBuroAvalDataSerialize(
  ModelBuroAvalData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.idConsulta);
  writer.writeString(offsets[1], object.mensaje);
  writer.writeLong(offsets[2], object.resultado);
}

ModelBuroAvalData _modelBuroAvalDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroAvalData(
    idConsulta: reader.readLongOrNull(offsets[0]),
    mensaje: reader.readStringOrNull(offsets[1]),
    resultado: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _modelBuroAvalDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroAvalDataQueryFilter
    on QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QFilterCondition> {
  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idConsulta',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idConsulta',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idConsulta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idConsulta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idConsulta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      idConsultaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idConsulta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mensaje',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mensaje',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mensaje',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mensaje',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mensaje',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mensaje',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      mensajeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mensaje',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultado',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultado',
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultado',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultado',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultado',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QAfterFilterCondition>
      resultadoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelBuroAvalDataQueryObject
    on QueryBuilder<ModelBuroAvalData, ModelBuroAvalData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroHeadDataSchema = Schema(
  name: r'ModelBuroHeadData',
  id: 8765760536807693440,
  properties: {
    r'titulo': PropertySchema(
      id: 0,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 1,
      name: r'valor',
      type: IsarType.string,
    )
  },
  estimateSize: _modelBuroHeadDataEstimateSize,
  serialize: _modelBuroHeadDataSerialize,
  deserialize: _modelBuroHeadDataDeserialize,
  deserializeProp: _modelBuroHeadDataDeserializeProp,
);

int _modelBuroHeadDataEstimateSize(
  ModelBuroHeadData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.titulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.valor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelBuroHeadDataSerialize(
  ModelBuroHeadData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.titulo);
  writer.writeString(offsets[1], object.valor);
}

ModelBuroHeadData _modelBuroHeadDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroHeadData(
    titulo: reader.readStringOrNull(offsets[0]),
    valor: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _modelBuroHeadDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroHeadDataQueryFilter
    on QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QFilterCondition> {
  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QAfterFilterCondition>
      valorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valor',
        value: '',
      ));
    });
  }
}

extension ModelBuroHeadDataQueryObject
    on QueryBuilder<ModelBuroHeadData, ModelBuroHeadData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroResumenDataSchema = Schema(
  name: r'ModelBuroResumenData',
  id: 3834251040575815284,
  properties: {
    r'alerta': PropertySchema(
      id: 0,
      name: r'alerta',
      type: IsarType.long,
    ),
    r'titulo': PropertySchema(
      id: 1,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 2,
      name: r'valor',
      type: IsarType.string,
    )
  },
  estimateSize: _modelBuroResumenDataEstimateSize,
  serialize: _modelBuroResumenDataSerialize,
  deserialize: _modelBuroResumenDataDeserialize,
  deserializeProp: _modelBuroResumenDataDeserializeProp,
);

int _modelBuroResumenDataEstimateSize(
  ModelBuroResumenData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.titulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.valor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelBuroResumenDataSerialize(
  ModelBuroResumenData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.alerta);
  writer.writeString(offsets[1], object.titulo);
  writer.writeString(offsets[2], object.valor);
}

ModelBuroResumenData _modelBuroResumenDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroResumenData(
    alerta: reader.readLongOrNull(offsets[0]),
    titulo: reader.readStringOrNull(offsets[1]),
    valor: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _modelBuroResumenDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroResumenDataQueryFilter on QueryBuilder<ModelBuroResumenData,
    ModelBuroResumenData, QFilterCondition> {
  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> alertaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alerta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
          QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
          QAfterFilterCondition>
      tituloMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
          QAfterFilterCondition>
      valorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
          QAfterFilterCondition>
      valorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroResumenData, ModelBuroResumenData,
      QAfterFilterCondition> valorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valor',
        value: '',
      ));
    });
  }
}

extension ModelBuroResumenDataQueryObject on QueryBuilder<ModelBuroResumenData,
    ModelBuroResumenData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroIfisDataSchema = Schema(
  name: r'ModelBuroIfisData',
  id: -6592622617717948081,
  properties: {
    r'alerta': PropertySchema(
      id: 0,
      name: r'alerta',
      type: IsarType.long,
    ),
    r'titulo': PropertySchema(
      id: 1,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 2,
      name: r'valor',
      type: IsarType.string,
    )
  },
  estimateSize: _modelBuroIfisDataEstimateSize,
  serialize: _modelBuroIfisDataSerialize,
  deserialize: _modelBuroIfisDataDeserialize,
  deserializeProp: _modelBuroIfisDataDeserializeProp,
);

int _modelBuroIfisDataEstimateSize(
  ModelBuroIfisData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.titulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.valor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelBuroIfisDataSerialize(
  ModelBuroIfisData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.alerta);
  writer.writeString(offsets[1], object.titulo);
  writer.writeString(offsets[2], object.valor);
}

ModelBuroIfisData _modelBuroIfisDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroIfisData(
    alerta: reader.readLongOrNull(offsets[0]),
    titulo: reader.readStringOrNull(offsets[1]),
    valor: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _modelBuroIfisDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroIfisDataQueryFilter
    on QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QFilterCondition> {
  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      alertaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alerta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QAfterFilterCondition>
      valorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valor',
        value: '',
      ));
    });
  }
}

extension ModelBuroIfisDataQueryObject
    on QueryBuilder<ModelBuroIfisData, ModelBuroIfisData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroCuentasCorrientesDataSchema = Schema(
  name: r'ModelBuroCuentasCorrientesData',
  id: 8152070720436284554,
  properties: {
    r'alerta': PropertySchema(
      id: 0,
      name: r'alerta',
      type: IsarType.long,
    ),
    r'titulo': PropertySchema(
      id: 1,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'valor': PropertySchema(
      id: 2,
      name: r'valor',
      type: IsarType.string,
    )
  },
  estimateSize: _modelBuroCuentasCorrientesDataEstimateSize,
  serialize: _modelBuroCuentasCorrientesDataSerialize,
  deserialize: _modelBuroCuentasCorrientesDataDeserialize,
  deserializeProp: _modelBuroCuentasCorrientesDataDeserializeProp,
);

int _modelBuroCuentasCorrientesDataEstimateSize(
  ModelBuroCuentasCorrientesData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.titulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.valor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelBuroCuentasCorrientesDataSerialize(
  ModelBuroCuentasCorrientesData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.alerta);
  writer.writeString(offsets[1], object.titulo);
  writer.writeString(offsets[2], object.valor);
}

ModelBuroCuentasCorrientesData _modelBuroCuentasCorrientesDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroCuentasCorrientesData(
    alerta: reader.readLongOrNull(offsets[0]),
    titulo: reader.readStringOrNull(offsets[1]),
    valor: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _modelBuroCuentasCorrientesDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroCuentasCorrientesDataQueryFilter on QueryBuilder<
    ModelBuroCuentasCorrientesData,
    ModelBuroCuentasCorrientesData,
    QFilterCondition> {
  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alerta',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alerta',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> alertaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alerta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'titulo',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
          QAfterFilterCondition>
      tituloContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
          QAfterFilterCondition>
      tituloMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valor',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
          QAfterFilterCondition>
      valorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
          QAfterFilterCondition>
      valorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valor',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelBuroCuentasCorrientesData, ModelBuroCuentasCorrientesData,
      QAfterFilterCondition> valorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valor',
        value: '',
      ));
    });
  }
}

extension ModelBuroCuentasCorrientesDataQueryObject on QueryBuilder<
    ModelBuroCuentasCorrientesData,
    ModelBuroCuentasCorrientesData,
    QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelBuroGraficoDataSchema = Schema(
  name: r'ModelBuroGraficoData',
  id: -4289168170035506098,
  properties: {
    r'fechaCorte': PropertySchema(
      id: 0,
      name: r'fechaCorte',
      type: IsarType.dateTime,
    ),
    r'totalDeuda': PropertySchema(
      id: 1,
      name: r'totalDeuda',
      type: IsarType.double,
    ),
    r'valorVencidoTotal': PropertySchema(
      id: 2,
      name: r'valorVencidoTotal',
      type: IsarType.double,
    )
  },
  estimateSize: _modelBuroGraficoDataEstimateSize,
  serialize: _modelBuroGraficoDataSerialize,
  deserialize: _modelBuroGraficoDataDeserialize,
  deserializeProp: _modelBuroGraficoDataDeserializeProp,
);

int _modelBuroGraficoDataEstimateSize(
  ModelBuroGraficoData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _modelBuroGraficoDataSerialize(
  ModelBuroGraficoData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.fechaCorte);
  writer.writeDouble(offsets[1], object.totalDeuda);
  writer.writeDouble(offsets[2], object.valorVencidoTotal);
}

ModelBuroGraficoData _modelBuroGraficoDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelBuroGraficoData(
    fechaCorte: reader.readDateTimeOrNull(offsets[0]),
    totalDeuda: reader.readDoubleOrNull(offsets[1]),
    valorVencidoTotal: reader.readDoubleOrNull(offsets[2]),
  );
  return object;
}

P _modelBuroGraficoDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelBuroGraficoDataQueryFilter on QueryBuilder<ModelBuroGraficoData,
    ModelBuroGraficoData, QFilterCondition> {
  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCorte',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCorte',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCorte',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCorte',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCorte',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> fechaCorteBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCorte',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalDeuda',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalDeuda',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalDeuda',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalDeuda',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalDeuda',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> totalDeudaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalDeuda',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'valorVencidoTotal',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'valorVencidoTotal',
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorVencidoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorVencidoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorVencidoTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelBuroGraficoData, ModelBuroGraficoData,
      QAfterFilterCondition> valorVencidoTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorVencidoTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ModelBuroGraficoDataQueryObject on QueryBuilder<ModelBuroGraficoData,
    ModelBuroGraficoData, QFilterCondition> {}
