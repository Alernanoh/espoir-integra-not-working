// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_ubicacion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarUbicacionCollection on Isar {
  IsarCollection<IsarUbicacion> get isarUbicacions => this.collection();
}

const IsarUbicacionSchema = CollectionSchema(
  name: r'IsarUbicacion',
  id: 6253408749914118911,
  properties: {
    r'cantones': PropertySchema(
      id: 0,
      name: r'cantones',
      type: IsarType.objectList,
      target: r'ModelCantonesData',
    ),
    r'fecha': PropertySchema(
      id: 1,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'parroquias': PropertySchema(
      id: 2,
      name: r'parroquias',
      type: IsarType.objectList,
      target: r'ModelParroquiasData',
    ),
    r'provincias': PropertySchema(
      id: 3,
      name: r'provincias',
      type: IsarType.objectList,
      target: r'ModelProvinciasData',
    )
  },
  estimateSize: _isarUbicacionEstimateSize,
  serialize: _isarUbicacionSerialize,
  deserialize: _isarUbicacionDeserialize,
  deserializeProp: _isarUbicacionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ModelProvinciasData': ModelProvinciasDataSchema,
    r'ModelCantonesData': ModelCantonesDataSchema,
    r'ModelParroquiasData': ModelParroquiasDataSchema
  },
  getId: _isarUbicacionGetId,
  getLinks: _isarUbicacionGetLinks,
  attach: _isarUbicacionAttach,
  version: '3.1.0+1',
);

int _isarUbicacionEstimateSize(
  IsarUbicacion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cantones.length * 3;
  {
    final offsets = allOffsets[ModelCantonesData]!;
    for (var i = 0; i < object.cantones.length; i++) {
      final value = object.cantones[i];
      bytesCount +=
          ModelCantonesDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.parroquias.length * 3;
  {
    final offsets = allOffsets[ModelParroquiasData]!;
    for (var i = 0; i < object.parroquias.length; i++) {
      final value = object.parroquias[i];
      bytesCount +=
          ModelParroquiasDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.provincias.length * 3;
  {
    final offsets = allOffsets[ModelProvinciasData]!;
    for (var i = 0; i < object.provincias.length; i++) {
      final value = object.provincias[i];
      bytesCount +=
          ModelProvinciasDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarUbicacionSerialize(
  IsarUbicacion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ModelCantonesData>(
    offsets[0],
    allOffsets,
    ModelCantonesDataSchema.serialize,
    object.cantones,
  );
  writer.writeDateTime(offsets[1], object.fecha);
  writer.writeObjectList<ModelParroquiasData>(
    offsets[2],
    allOffsets,
    ModelParroquiasDataSchema.serialize,
    object.parroquias,
  );
  writer.writeObjectList<ModelProvinciasData>(
    offsets[3],
    allOffsets,
    ModelProvinciasDataSchema.serialize,
    object.provincias,
  );
}

IsarUbicacion _isarUbicacionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUbicacion(
    cantones: reader.readObjectList<ModelCantonesData>(
          offsets[0],
          ModelCantonesDataSchema.deserialize,
          allOffsets,
          ModelCantonesData(),
        ) ??
        [],
    fecha: reader.readDateTime(offsets[1]),
    parroquias: reader.readObjectList<ModelParroquiasData>(
          offsets[2],
          ModelParroquiasDataSchema.deserialize,
          allOffsets,
          ModelParroquiasData(),
        ) ??
        [],
    provincias: reader.readObjectList<ModelProvinciasData>(
          offsets[3],
          ModelProvinciasDataSchema.deserialize,
          allOffsets,
          ModelProvinciasData(),
        ) ??
        [],
  );
  object.id = id;
  return object;
}

P _isarUbicacionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ModelCantonesData>(
            offset,
            ModelCantonesDataSchema.deserialize,
            allOffsets,
            ModelCantonesData(),
          ) ??
          []) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readObjectList<ModelParroquiasData>(
            offset,
            ModelParroquiasDataSchema.deserialize,
            allOffsets,
            ModelParroquiasData(),
          ) ??
          []) as P;
    case 3:
      return (reader.readObjectList<ModelProvinciasData>(
            offset,
            ModelProvinciasDataSchema.deserialize,
            allOffsets,
            ModelProvinciasData(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarUbicacionGetId(IsarUbicacion object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarUbicacionGetLinks(IsarUbicacion object) {
  return [];
}

void _isarUbicacionAttach(
    IsarCollection<dynamic> col, Id id, IsarUbicacion object) {
  object.id = id;
}

extension IsarUbicacionQueryWhereSort
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QWhere> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarUbicacionQueryWhere
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QWhereClause> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterWhereClause> idBetween(
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

extension IsarUbicacionQueryFilter
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QFilterCondition> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cantones',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      fechaLessThan(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      fechaBetween(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'parroquias',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'provincias',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarUbicacionQueryObject
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QFilterCondition> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      cantonesElement(FilterQuery<ModelCantonesData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cantones');
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      parroquiasElement(FilterQuery<ModelParroquiasData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'parroquias');
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterFilterCondition>
      provinciasElement(FilterQuery<ModelProvinciasData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'provincias');
    });
  }
}

extension IsarUbicacionQueryLinks
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QFilterCondition> {}

extension IsarUbicacionQuerySortBy
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QSortBy> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }
}

extension IsarUbicacionQuerySortThenBy
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QSortThenBy> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarUbicacion, IsarUbicacion, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension IsarUbicacionQueryWhereDistinct
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QDistinct> {
  QueryBuilder<IsarUbicacion, IsarUbicacion, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }
}

extension IsarUbicacionQueryProperty
    on QueryBuilder<IsarUbicacion, IsarUbicacion, QQueryProperty> {
  QueryBuilder<IsarUbicacion, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarUbicacion, List<ModelCantonesData>, QQueryOperations>
      cantonesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantones');
    });
  }

  QueryBuilder<IsarUbicacion, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<IsarUbicacion, List<ModelParroquiasData>, QQueryOperations>
      parroquiasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parroquias');
    });
  }

  QueryBuilder<IsarUbicacion, List<ModelProvinciasData>, QQueryOperations>
      provinciasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provincias');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelProvinciasDataSchema = Schema(
  name: r'ModelProvinciasData',
  id: 7224498672099956585,
  properties: {
    r'prvNombre': PropertySchema(
      id: 0,
      name: r'prvNombre',
      type: IsarType.string,
    ),
    r'prvProvincia': PropertySchema(
      id: 1,
      name: r'prvProvincia',
      type: IsarType.long,
    )
  },
  estimateSize: _modelProvinciasDataEstimateSize,
  serialize: _modelProvinciasDataSerialize,
  deserialize: _modelProvinciasDataDeserialize,
  deserializeProp: _modelProvinciasDataDeserializeProp,
);

int _modelProvinciasDataEstimateSize(
  ModelProvinciasData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.prvNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelProvinciasDataSerialize(
  ModelProvinciasData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.prvNombre);
  writer.writeLong(offsets[1], object.prvProvincia);
}

ModelProvinciasData _modelProvinciasDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelProvinciasData(
    prvNombre: reader.readStringOrNull(offsets[0]),
    prvProvincia: reader.readLongOrNull(offsets[1]),
  );
  return object;
}

P _modelProvinciasDataDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelProvinciasDataQueryFilter on QueryBuilder<ModelProvinciasData,
    ModelProvinciasData, QFilterCondition> {
  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prvNombre',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prvNombre',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prvNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prvNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prvNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prvNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prvNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prvProvincia',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prvProvincia',
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prvProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prvProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prvProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelProvinciasData, ModelProvinciasData, QAfterFilterCondition>
      prvProvinciaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prvProvincia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelProvinciasDataQueryObject on QueryBuilder<ModelProvinciasData,
    ModelProvinciasData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelCantonesDataSchema = Schema(
  name: r'ModelCantonesData',
  id: 4522176947558909625,
  properties: {
    r'cntCanton': PropertySchema(
      id: 0,
      name: r'cntCanton',
      type: IsarType.long,
    ),
    r'cntNombre': PropertySchema(
      id: 1,
      name: r'cntNombre',
      type: IsarType.string,
    ),
    r'cntProvincia': PropertySchema(
      id: 2,
      name: r'cntProvincia',
      type: IsarType.long,
    )
  },
  estimateSize: _modelCantonesDataEstimateSize,
  serialize: _modelCantonesDataSerialize,
  deserialize: _modelCantonesDataDeserialize,
  deserializeProp: _modelCantonesDataDeserializeProp,
);

int _modelCantonesDataEstimateSize(
  ModelCantonesData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cntNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelCantonesDataSerialize(
  ModelCantonesData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cntCanton);
  writer.writeString(offsets[1], object.cntNombre);
  writer.writeLong(offsets[2], object.cntProvincia);
}

ModelCantonesData _modelCantonesDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelCantonesData(
    cntCanton: reader.readLongOrNull(offsets[0]),
    cntNombre: reader.readStringOrNull(offsets[1]),
    cntProvincia: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _modelCantonesDataDeserializeProp<P>(
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

extension ModelCantonesDataQueryFilter
    on QueryBuilder<ModelCantonesData, ModelCantonesData, QFilterCondition> {
  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cntCanton',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cntCanton',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cntCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cntCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cntCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntCantonBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cntCanton',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cntNombre',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cntNombre',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cntNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cntNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cntNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cntNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cntNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cntProvincia',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cntProvincia',
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cntProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cntProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cntProvincia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelCantonesData, ModelCantonesData, QAfterFilterCondition>
      cntProvinciaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cntProvincia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelCantonesDataQueryObject
    on QueryBuilder<ModelCantonesData, ModelCantonesData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelParroquiasDataSchema = Schema(
  name: r'ModelParroquiasData',
  id: 4373103934892190968,
  properties: {
    r'parCanton': PropertySchema(
      id: 0,
      name: r'parCanton',
      type: IsarType.long,
    ),
    r'parNombre': PropertySchema(
      id: 1,
      name: r'parNombre',
      type: IsarType.string,
    ),
    r'parParroquia': PropertySchema(
      id: 2,
      name: r'parParroquia',
      type: IsarType.long,
    )
  },
  estimateSize: _modelParroquiasDataEstimateSize,
  serialize: _modelParroquiasDataSerialize,
  deserialize: _modelParroquiasDataDeserialize,
  deserializeProp: _modelParroquiasDataDeserializeProp,
);

int _modelParroquiasDataEstimateSize(
  ModelParroquiasData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.parNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelParroquiasDataSerialize(
  ModelParroquiasData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.parCanton);
  writer.writeString(offsets[1], object.parNombre);
  writer.writeLong(offsets[2], object.parParroquia);
}

ModelParroquiasData _modelParroquiasDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelParroquiasData(
    parCanton: reader.readLongOrNull(offsets[0]),
    parNombre: reader.readStringOrNull(offsets[1]),
    parParroquia: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _modelParroquiasDataDeserializeProp<P>(
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

extension ModelParroquiasDataQueryFilter on QueryBuilder<ModelParroquiasData,
    ModelParroquiasData, QFilterCondition> {
  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parCanton',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parCanton',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parCanton',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parCantonBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parCanton',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parNombre',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parNombre',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parParroquia',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parParroquia',
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parParroquia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parParroquia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parParroquia',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelParroquiasData, ModelParroquiasData, QAfterFilterCondition>
      parParroquiaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parParroquia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelParroquiasDataQueryObject on QueryBuilder<ModelParroquiasData,
    ModelParroquiasData, QFilterCondition> {}
