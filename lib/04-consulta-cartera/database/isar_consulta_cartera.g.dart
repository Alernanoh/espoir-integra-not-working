// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_consulta_cartera.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarConsultaCarteraCollection on Isar {
  IsarCollection<IsarConsultaCartera> get isarConsultaCarteras =>
      this.collection();
}

const IsarConsultaCarteraSchema = CollectionSchema(
  name: r'IsarConsultaCartera',
  id: 5382216141258073634,
  properties: {
    r'cedula': PropertySchema(
      id: 0,
      name: r'cedula',
      type: IsarType.string,
    ),
    r'cliente': PropertySchema(
      id: 1,
      name: r'cliente',
      type: IsarType.string,
    ),
    r'data': PropertySchema(
      id: 2,
      name: r'data',
      type: IsarType.objectList,
      target: r'ModelConsultaCarteraData',
    ),
    r'deudasOne': PropertySchema(
      id: 3,
      name: r'deudasOne',
      type: IsarType.stringList,
    ),
    r'deudasThree': PropertySchema(
      id: 4,
      name: r'deudasThree',
      type: IsarType.stringList,
    ),
    r'deudasTwo': PropertySchema(
      id: 5,
      name: r'deudasTwo',
      type: IsarType.stringList,
    ),
    r'fecha': PropertySchema(
      id: 6,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'informacionOne': PropertySchema(
      id: 7,
      name: r'informacionOne',
      type: IsarType.stringList,
    ),
    r'informacionThree': PropertySchema(
      id: 8,
      name: r'informacionThree',
      type: IsarType.stringList,
    ),
    r'informacionTwo': PropertySchema(
      id: 9,
      name: r'informacionTwo',
      type: IsarType.stringList,
    ),
    r'transaccionesOne': PropertySchema(
      id: 10,
      name: r'transaccionesOne',
      type: IsarType.stringList,
    ),
    r'transaccionesThree': PropertySchema(
      id: 11,
      name: r'transaccionesThree',
      type: IsarType.stringList,
    ),
    r'transaccionesTwo': PropertySchema(
      id: 12,
      name: r'transaccionesTwo',
      type: IsarType.stringList,
    ),
    r'valoresOne': PropertySchema(
      id: 13,
      name: r'valoresOne',
      type: IsarType.stringList,
    ),
    r'valoresThree': PropertySchema(
      id: 14,
      name: r'valoresThree',
      type: IsarType.stringList,
    ),
    r'valoresTwo': PropertySchema(
      id: 15,
      name: r'valoresTwo',
      type: IsarType.stringList,
    )
  },
  estimateSize: _isarConsultaCarteraEstimateSize,
  serialize: _isarConsultaCarteraSerialize,
  deserialize: _isarConsultaCarteraDeserialize,
  deserializeProp: _isarConsultaCarteraDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ModelConsultaCarteraData': ModelConsultaCarteraDataSchema
  },
  getId: _isarConsultaCarteraGetId,
  getLinks: _isarConsultaCarteraGetLinks,
  attach: _isarConsultaCarteraAttach,
  version: '3.1.0+1',
);

int _isarConsultaCarteraEstimateSize(
  IsarConsultaCartera object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cedula.length * 3;
  bytesCount += 3 + object.cliente.length * 3;
  bytesCount += 3 + object.data.length * 3;
  {
    final offsets = allOffsets[ModelConsultaCarteraData]!;
    for (var i = 0; i < object.data.length; i++) {
      final value = object.data[i];
      bytesCount += ModelConsultaCarteraDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.deudasOne.length * 3;
  {
    for (var i = 0; i < object.deudasOne.length; i++) {
      final value = object.deudasOne[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.deudasThree.length * 3;
  {
    for (var i = 0; i < object.deudasThree.length; i++) {
      final value = object.deudasThree[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.deudasTwo.length * 3;
  {
    for (var i = 0; i < object.deudasTwo.length; i++) {
      final value = object.deudasTwo[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.informacionOne.length * 3;
  {
    for (var i = 0; i < object.informacionOne.length; i++) {
      final value = object.informacionOne[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.informacionThree.length * 3;
  {
    for (var i = 0; i < object.informacionThree.length; i++) {
      final value = object.informacionThree[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.informacionTwo.length * 3;
  {
    for (var i = 0; i < object.informacionTwo.length; i++) {
      final value = object.informacionTwo[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.transaccionesOne.length * 3;
  {
    for (var i = 0; i < object.transaccionesOne.length; i++) {
      final value = object.transaccionesOne[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.transaccionesThree.length * 3;
  {
    for (var i = 0; i < object.transaccionesThree.length; i++) {
      final value = object.transaccionesThree[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.transaccionesTwo.length * 3;
  {
    for (var i = 0; i < object.transaccionesTwo.length; i++) {
      final value = object.transaccionesTwo[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.valoresOne.length * 3;
  {
    for (var i = 0; i < object.valoresOne.length; i++) {
      final value = object.valoresOne[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.valoresThree.length * 3;
  {
    for (var i = 0; i < object.valoresThree.length; i++) {
      final value = object.valoresThree[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.valoresTwo.length * 3;
  {
    for (var i = 0; i < object.valoresTwo.length; i++) {
      final value = object.valoresTwo[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _isarConsultaCarteraSerialize(
  IsarConsultaCartera object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cedula);
  writer.writeString(offsets[1], object.cliente);
  writer.writeObjectList<ModelConsultaCarteraData>(
    offsets[2],
    allOffsets,
    ModelConsultaCarteraDataSchema.serialize,
    object.data,
  );
  writer.writeStringList(offsets[3], object.deudasOne);
  writer.writeStringList(offsets[4], object.deudasThree);
  writer.writeStringList(offsets[5], object.deudasTwo);
  writer.writeDateTime(offsets[6], object.fecha);
  writer.writeStringList(offsets[7], object.informacionOne);
  writer.writeStringList(offsets[8], object.informacionThree);
  writer.writeStringList(offsets[9], object.informacionTwo);
  writer.writeStringList(offsets[10], object.transaccionesOne);
  writer.writeStringList(offsets[11], object.transaccionesThree);
  writer.writeStringList(offsets[12], object.transaccionesTwo);
  writer.writeStringList(offsets[13], object.valoresOne);
  writer.writeStringList(offsets[14], object.valoresThree);
  writer.writeStringList(offsets[15], object.valoresTwo);
}

IsarConsultaCartera _isarConsultaCarteraDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarConsultaCartera(
    cedula: reader.readString(offsets[0]),
    cliente: reader.readString(offsets[1]),
    data: reader.readObjectList<ModelConsultaCarteraData>(
          offsets[2],
          ModelConsultaCarteraDataSchema.deserialize,
          allOffsets,
          ModelConsultaCarteraData(),
        ) ??
        [],
    deudasOne: reader.readStringList(offsets[3]) ?? [],
    deudasThree: reader.readStringList(offsets[4]) ?? [],
    deudasTwo: reader.readStringList(offsets[5]) ?? [],
    fecha: reader.readDateTime(offsets[6]),
    informacionOne: reader.readStringList(offsets[7]) ?? [],
    informacionThree: reader.readStringList(offsets[8]) ?? [],
    informacionTwo: reader.readStringList(offsets[9]) ?? [],
    transaccionesOne: reader.readStringList(offsets[10]) ?? [],
    transaccionesThree: reader.readStringList(offsets[11]) ?? [],
    transaccionesTwo: reader.readStringList(offsets[12]) ?? [],
    valoresOne: reader.readStringList(offsets[13]) ?? [],
    valoresThree: reader.readStringList(offsets[14]) ?? [],
    valoresTwo: reader.readStringList(offsets[15]) ?? [],
  );
  object.id = id;
  return object;
}

P _isarConsultaCarteraDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readObjectList<ModelConsultaCarteraData>(
            offset,
            ModelConsultaCarteraDataSchema.deserialize,
            allOffsets,
            ModelConsultaCarteraData(),
          ) ??
          []) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    case 12:
      return (reader.readStringList(offset) ?? []) as P;
    case 13:
      return (reader.readStringList(offset) ?? []) as P;
    case 14:
      return (reader.readStringList(offset) ?? []) as P;
    case 15:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarConsultaCarteraGetId(IsarConsultaCartera object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarConsultaCarteraGetLinks(
    IsarConsultaCartera object) {
  return [];
}

void _isarConsultaCarteraAttach(
    IsarCollection<dynamic> col, Id id, IsarConsultaCartera object) {
  object.id = id;
}

extension IsarConsultaCarteraQueryWhereSort
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QWhere> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarConsultaCarteraQueryWhere
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QWhereClause> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterWhereClause>
      idBetween(
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

extension IsarConsultaCarteraQueryFilter on QueryBuilder<IsarConsultaCartera,
    IsarConsultaCartera, QFilterCondition> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaEqualTo(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaLessThan(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaBetween(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaEndsWith(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cedula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      cedulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteEqualTo(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteLessThan(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteBetween(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteEndsWith(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cliente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cliente',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cliente',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      clienteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cliente',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deudasOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deudasOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deudasOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deudasOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasOneLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasOne',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deudasThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deudasThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deudasThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deudasThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasThreeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasThree',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deudasTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deudasTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deudasTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deudasTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deudasTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      deudasTwoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deudasTwo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'informacionOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'informacionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'informacionOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'informacionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionOneLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionOne',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'informacionThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'informacionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'informacionThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'informacionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionThreeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionThree',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'informacionTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'informacionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'informacionTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informacionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'informacionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      informacionTwoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'informacionTwo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transaccionesOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transaccionesOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transaccionesOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transaccionesOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesOneLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesOne',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transaccionesThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transaccionesThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transaccionesThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transaccionesThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesThreeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesThree',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transaccionesTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transaccionesTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transaccionesTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transaccionesTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transaccionesTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      transaccionesTwoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'transaccionesTwo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valoresOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valoresOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valoresOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valoresOne',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresOneLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresOne',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valoresThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valoresThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valoresThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valoresThree',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresThreeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresThree',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valoresTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'valoresTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'valoresTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valoresTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'valoresTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      valoresTwoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'valoresTwo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarConsultaCarteraQueryObject on QueryBuilder<IsarConsultaCartera,
    IsarConsultaCartera, QFilterCondition> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterFilterCondition>
      dataElement(FilterQuery<ModelConsultaCarteraData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'data');
    });
  }
}

extension IsarConsultaCarteraQueryLinks on QueryBuilder<IsarConsultaCartera,
    IsarConsultaCartera, QFilterCondition> {}

extension IsarConsultaCarteraQuerySortBy
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QSortBy> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByCedula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByCedulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.desc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.desc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }
}

extension IsarConsultaCarteraQuerySortThenBy
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QSortThenBy> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByCedula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByCedulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cedula', Sort.desc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByCliente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByClienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cliente', Sort.desc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension IsarConsultaCarteraQueryWhereDistinct
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct> {
  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByCedula({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cedula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByCliente({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cliente', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByDeudasOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deudasOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByDeudasThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deudasThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByDeudasTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deudasTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByInformacionOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'informacionOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByInformacionThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'informacionThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByInformacionTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'informacionTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByTransaccionesOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transaccionesOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByTransaccionesThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transaccionesThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByTransaccionesTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transaccionesTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByValoresOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valoresOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByValoresThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valoresThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QDistinct>
      distinctByValoresTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valoresTwo');
    });
  }
}

extension IsarConsultaCarteraQueryProperty
    on QueryBuilder<IsarConsultaCartera, IsarConsultaCartera, QQueryProperty> {
  QueryBuilder<IsarConsultaCartera, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarConsultaCartera, String, QQueryOperations> cedulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cedula');
    });
  }

  QueryBuilder<IsarConsultaCartera, String, QQueryOperations>
      clienteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cliente');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<ModelConsultaCarteraData>,
      QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      deudasOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deudasOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      deudasThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deudasThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      deudasTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deudasTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, DateTime, QQueryOperations>
      fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      informacionOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'informacionOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      informacionThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'informacionThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      informacionTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'informacionTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      transaccionesOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transaccionesOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      transaccionesThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transaccionesThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      transaccionesTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transaccionesTwo');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      valoresOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valoresOne');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      valoresThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valoresThree');
    });
  }

  QueryBuilder<IsarConsultaCartera, List<String>, QQueryOperations>
      valoresTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valoresTwo');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelConsultaCarteraDataSchema = Schema(
  name: r'ModelConsultaCarteraData',
  id: 9034001059211011965,
  properties: {
    r'cedula': PropertySchema(
      id: 0,
      name: r'cedula',
      type: IsarType.string,
    ),
    r'credito': PropertySchema(
      id: 1,
      name: r'credito',
      type: IsarType.string,
    ),
    r'diasMoraCnt': PropertySchema(
      id: 2,
      name: r'diasMoraCnt',
      type: IsarType.long,
    ),
    r'estado': PropertySchema(
      id: 3,
      name: r'estado',
      type: IsarType.string,
    ),
    r'nombre': PropertySchema(
      id: 4,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'saldo': PropertySchema(
      id: 5,
      name: r'saldo',
      type: IsarType.double,
    )
  },
  estimateSize: _modelConsultaCarteraDataEstimateSize,
  serialize: _modelConsultaCarteraDataSerialize,
  deserialize: _modelConsultaCarteraDataDeserialize,
  deserializeProp: _modelConsultaCarteraDataDeserializeProp,
);

int _modelConsultaCarteraDataEstimateSize(
  ModelConsultaCarteraData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cedula;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.credito;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.estado;
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

void _modelConsultaCarteraDataSerialize(
  ModelConsultaCarteraData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cedula);
  writer.writeString(offsets[1], object.credito);
  writer.writeLong(offsets[2], object.diasMoraCnt);
  writer.writeString(offsets[3], object.estado);
  writer.writeString(offsets[4], object.nombre);
  writer.writeDouble(offsets[5], object.saldo);
}

ModelConsultaCarteraData _modelConsultaCarteraDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelConsultaCarteraData(
    cedula: reader.readStringOrNull(offsets[0]),
    credito: reader.readStringOrNull(offsets[1]),
    diasMoraCnt: reader.readLongOrNull(offsets[2]),
    estado: reader.readStringOrNull(offsets[3]),
    nombre: reader.readStringOrNull(offsets[4]),
    saldo: reader.readDoubleOrNull(offsets[5]),
  );
  return object;
}

P _modelConsultaCarteraDataDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelConsultaCarteraDataQueryFilter on QueryBuilder<
    ModelConsultaCarteraData, ModelConsultaCarteraData, QFilterCondition> {
  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cedula',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cedula',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaEqualTo(
    String? value, {
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaGreaterThan(
    String? value, {
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaLessThan(
    String? value, {
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaStartsWith(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaEndsWith(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      cedulaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cedula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      cedulaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cedula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> cedulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cedula',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'credito',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'credito',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'credito',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      creditoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'credito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      creditoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'credito',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> creditoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'credito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diasMoraCnt',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diasMoraCnt',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diasMoraCnt',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diasMoraCnt',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diasMoraCnt',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> diasMoraCntBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diasMoraCnt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      estadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'estado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      estadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'estado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> estadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'estado',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreEqualTo(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreGreaterThan(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreLessThan(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreBetween(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreStartsWith(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreEndsWith(
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

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      nombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
          QAfterFilterCondition>
      nombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saldo',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saldo',
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saldo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ModelConsultaCarteraData, ModelConsultaCarteraData,
      QAfterFilterCondition> saldoBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saldo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ModelConsultaCarteraDataQueryObject on QueryBuilder<
    ModelConsultaCarteraData, ModelConsultaCarteraData, QFilterCondition> {}
