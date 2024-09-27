// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_drawer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarDrawerCollection on Isar {
  IsarCollection<IsarDrawer> get isarDrawers => this.collection();
}

const IsarDrawerSchema = CollectionSchema(
  name: r'IsarDrawer',
  id: 7398276859627797498,
  properties: {
    r'drawer': PropertySchema(
      id: 0,
      name: r'drawer',
      type: IsarType.objectList,
      target: r'ModelDrawerData',
    ),
    r'fecha': PropertySchema(
      id: 1,
      name: r'fecha',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _isarDrawerEstimateSize,
  serialize: _isarDrawerSerialize,
  deserialize: _isarDrawerDeserialize,
  deserializeProp: _isarDrawerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'ModelDrawerData': ModelDrawerDataSchema},
  getId: _isarDrawerGetId,
  getLinks: _isarDrawerGetLinks,
  attach: _isarDrawerAttach,
  version: '3.1.0+1',
);

int _isarDrawerEstimateSize(
  IsarDrawer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.drawer.length * 3;
  {
    final offsets = allOffsets[ModelDrawerData]!;
    for (var i = 0; i < object.drawer.length; i++) {
      final value = object.drawer[i];
      bytesCount +=
          ModelDrawerDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarDrawerSerialize(
  IsarDrawer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ModelDrawerData>(
    offsets[0],
    allOffsets,
    ModelDrawerDataSchema.serialize,
    object.drawer,
  );
  writer.writeDateTime(offsets[1], object.fecha);
}

IsarDrawer _isarDrawerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarDrawer(
    drawer: reader.readObjectList<ModelDrawerData>(
          offsets[0],
          ModelDrawerDataSchema.deserialize,
          allOffsets,
          ModelDrawerData(),
        ) ??
        [],
    fecha: reader.readDateTime(offsets[1]),
  );
  object.id = id;
  return object;
}

P _isarDrawerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ModelDrawerData>(
            offset,
            ModelDrawerDataSchema.deserialize,
            allOffsets,
            ModelDrawerData(),
          ) ??
          []) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarDrawerGetId(IsarDrawer object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarDrawerGetLinks(IsarDrawer object) {
  return [];
}

void _isarDrawerAttach(IsarCollection<dynamic> col, Id id, IsarDrawer object) {
  object.id = id;
}

extension IsarDrawerQueryWhereSort
    on QueryBuilder<IsarDrawer, IsarDrawer, QWhere> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarDrawerQueryWhere
    on QueryBuilder<IsarDrawer, IsarDrawer, QWhereClause> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterWhereClause> idBetween(
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

extension IsarDrawerQueryFilter
    on QueryBuilder<IsarDrawer, IsarDrawer, QFilterCondition> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition>
      drawerLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> drawerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition>
      drawerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition>
      drawerLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition>
      drawerLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition>
      drawerLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'drawer',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> fechaEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> fechaGreaterThan(
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> fechaLessThan(
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> fechaBetween(
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> idBetween(
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
}

extension IsarDrawerQueryObject
    on QueryBuilder<IsarDrawer, IsarDrawer, QFilterCondition> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterFilterCondition> drawerElement(
      FilterQuery<ModelDrawerData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'drawer');
    });
  }
}

extension IsarDrawerQueryLinks
    on QueryBuilder<IsarDrawer, IsarDrawer, QFilterCondition> {}

extension IsarDrawerQuerySortBy
    on QueryBuilder<IsarDrawer, IsarDrawer, QSortBy> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }
}

extension IsarDrawerQuerySortThenBy
    on QueryBuilder<IsarDrawer, IsarDrawer, QSortThenBy> {
  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarDrawer, IsarDrawer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension IsarDrawerQueryWhereDistinct
    on QueryBuilder<IsarDrawer, IsarDrawer, QDistinct> {
  QueryBuilder<IsarDrawer, IsarDrawer, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }
}

extension IsarDrawerQueryProperty
    on QueryBuilder<IsarDrawer, IsarDrawer, QQueryProperty> {
  QueryBuilder<IsarDrawer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarDrawer, List<ModelDrawerData>, QQueryOperations>
      drawerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drawer');
    });
  }

  QueryBuilder<IsarDrawer, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelDrawerDataSchema = Schema(
  name: r'ModelDrawerData',
  id: 2111639909441370724,
  properties: {
    r'menIcono': PropertySchema(
      id: 0,
      name: r'menIcono',
      type: IsarType.string,
    ),
    r'menNombre': PropertySchema(
      id: 1,
      name: r'menNombre',
      type: IsarType.string,
    ),
    r'menRuta': PropertySchema(
      id: 2,
      name: r'menRuta',
      type: IsarType.string,
    )
  },
  estimateSize: _modelDrawerDataEstimateSize,
  serialize: _modelDrawerDataSerialize,
  deserialize: _modelDrawerDataDeserialize,
  deserializeProp: _modelDrawerDataDeserializeProp,
);

int _modelDrawerDataEstimateSize(
  ModelDrawerData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.menIcono;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.menNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.menRuta;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelDrawerDataSerialize(
  ModelDrawerData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.menIcono);
  writer.writeString(offsets[1], object.menNombre);
  writer.writeString(offsets[2], object.menRuta);
}

ModelDrawerData _modelDrawerDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelDrawerData(
    menIcono: reader.readStringOrNull(offsets[0]),
    menNombre: reader.readStringOrNull(offsets[1]),
    menRuta: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _modelDrawerDataDeserializeProp<P>(
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
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelDrawerDataQueryFilter
    on QueryBuilder<ModelDrawerData, ModelDrawerData, QFilterCondition> {
  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'menIcono',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'menIcono',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'menIcono',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'menIcono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'menIcono',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menIcono',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menIconoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'menIcono',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'menNombre',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'menNombre',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'menNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'menNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'menNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'menNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'menRuta',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'menRuta',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'menRuta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'menRuta',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'menRuta',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'menRuta',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelDrawerData, ModelDrawerData, QAfterFilterCondition>
      menRutaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'menRuta',
        value: '',
      ));
    });
  }
}

extension ModelDrawerDataQueryObject
    on QueryBuilder<ModelDrawerData, ModelDrawerData, QFilterCondition> {}
