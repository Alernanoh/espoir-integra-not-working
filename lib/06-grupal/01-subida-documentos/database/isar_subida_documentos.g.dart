// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_subida_documentos.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarGrupalSubidaDocumentosCollection on Isar {
  IsarCollection<IsarGrupalSubidaDocumentos> get isarGrupalSubidaDocumentos =>
      this.collection();
}

const IsarGrupalSubidaDocumentosSchema = CollectionSchema(
  name: r'IsarGrupalSubidaDocumentos',
  id: -511844779742250886,
  properties: {
    r'agregar': PropertySchema(
      id: 0,
      name: r'agregar',
      type: IsarType.objectList,
      target: r'ModelGrupalReproAgregarData',
    ),
    r'cambiar': PropertySchema(
      id: 1,
      name: r'cambiar',
      type: IsarType.objectList,
      target: r'ModelGrupalReproCambiarData',
    ),
    r'documentos': PropertySchema(
      id: 2,
      name: r'documentos',
      type: IsarType.objectList,
      target: r'ModelGrupalTiposDocumentosData',
    ),
    r'fecha': PropertySchema(
      id: 3,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'imagenes': PropertySchema(
      id: 4,
      name: r'imagenes',
      type: IsarType.objectList,
      target: r'ModelGrupalTiposDocumentosImagenData',
    ),
    r'infoGrupo': PropertySchema(
      id: 5,
      name: r'infoGrupo',
      type: IsarType.object,
      target: r'ModelGrupalGruposData',
    ),
    r'latitud': PropertySchema(
      id: 6,
      name: r'latitud',
      type: IsarType.double,
    ),
    r'longitud': PropertySchema(
      id: 7,
      name: r'longitud',
      type: IsarType.double,
    )
  },
  estimateSize: _isarGrupalSubidaDocumentosEstimateSize,
  serialize: _isarGrupalSubidaDocumentosSerialize,
  deserialize: _isarGrupalSubidaDocumentosDeserialize,
  deserializeProp: _isarGrupalSubidaDocumentosDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ModelGrupalGruposData': ModelGrupalGruposDataSchema,
    r'ModelGrupalTiposDocumentosData': ModelGrupalTiposDocumentosDataSchema,
    r'ModelGrupalTiposDocumentosImagenData':
        ModelGrupalTiposDocumentosImagenDataSchema,
    r'ModelGrupalReproAgregarData': ModelGrupalReproAgregarDataSchema,
    r'ModelGrupalReproCambiarData': ModelGrupalReproCambiarDataSchema
  },
  getId: _isarGrupalSubidaDocumentosGetId,
  getLinks: _isarGrupalSubidaDocumentosGetLinks,
  attach: _isarGrupalSubidaDocumentosAttach,
  version: '3.1.0+1',
);

int _isarGrupalSubidaDocumentosEstimateSize(
  IsarGrupalSubidaDocumentos object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.agregar.length * 3;
  {
    final offsets = allOffsets[ModelGrupalReproAgregarData]!;
    for (var i = 0; i < object.agregar.length; i++) {
      final value = object.agregar[i];
      bytesCount += ModelGrupalReproAgregarDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.cambiar.length * 3;
  {
    final offsets = allOffsets[ModelGrupalReproCambiarData]!;
    for (var i = 0; i < object.cambiar.length; i++) {
      final value = object.cambiar[i];
      bytesCount += ModelGrupalReproCambiarDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.documentos.length * 3;
  {
    final offsets = allOffsets[ModelGrupalTiposDocumentosData]!;
    for (var i = 0; i < object.documentos.length; i++) {
      final value = object.documentos[i];
      bytesCount += ModelGrupalTiposDocumentosDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.imagenes.length * 3;
  {
    final offsets = allOffsets[ModelGrupalTiposDocumentosImagenData]!;
    for (var i = 0; i < object.imagenes.length; i++) {
      final value = object.imagenes[i];
      bytesCount += ModelGrupalTiposDocumentosImagenDataSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      ModelGrupalGruposDataSchema.estimateSize(
          object.infoGrupo, allOffsets[ModelGrupalGruposData]!, allOffsets);
  return bytesCount;
}

void _isarGrupalSubidaDocumentosSerialize(
  IsarGrupalSubidaDocumentos object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ModelGrupalReproAgregarData>(
    offsets[0],
    allOffsets,
    ModelGrupalReproAgregarDataSchema.serialize,
    object.agregar,
  );
  writer.writeObjectList<ModelGrupalReproCambiarData>(
    offsets[1],
    allOffsets,
    ModelGrupalReproCambiarDataSchema.serialize,
    object.cambiar,
  );
  writer.writeObjectList<ModelGrupalTiposDocumentosData>(
    offsets[2],
    allOffsets,
    ModelGrupalTiposDocumentosDataSchema.serialize,
    object.documentos,
  );
  writer.writeDateTime(offsets[3], object.fecha);
  writer.writeObjectList<ModelGrupalTiposDocumentosImagenData>(
    offsets[4],
    allOffsets,
    ModelGrupalTiposDocumentosImagenDataSchema.serialize,
    object.imagenes,
  );
  writer.writeObject<ModelGrupalGruposData>(
    offsets[5],
    allOffsets,
    ModelGrupalGruposDataSchema.serialize,
    object.infoGrupo,
  );
  writer.writeDouble(offsets[6], object.latitud);
  writer.writeDouble(offsets[7], object.longitud);
}

IsarGrupalSubidaDocumentos _isarGrupalSubidaDocumentosDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarGrupalSubidaDocumentos(
    agregar: reader.readObjectList<ModelGrupalReproAgregarData>(
          offsets[0],
          ModelGrupalReproAgregarDataSchema.deserialize,
          allOffsets,
          ModelGrupalReproAgregarData(),
        ) ??
        [],
    cambiar: reader.readObjectList<ModelGrupalReproCambiarData>(
          offsets[1],
          ModelGrupalReproCambiarDataSchema.deserialize,
          allOffsets,
          ModelGrupalReproCambiarData(),
        ) ??
        [],
    documentos: reader.readObjectList<ModelGrupalTiposDocumentosData>(
          offsets[2],
          ModelGrupalTiposDocumentosDataSchema.deserialize,
          allOffsets,
          ModelGrupalTiposDocumentosData(),
        ) ??
        [],
    fecha: reader.readDateTime(offsets[3]),
    imagenes: reader.readObjectList<ModelGrupalTiposDocumentosImagenData>(
          offsets[4],
          ModelGrupalTiposDocumentosImagenDataSchema.deserialize,
          allOffsets,
          ModelGrupalTiposDocumentosImagenData(),
        ) ??
        [],
    infoGrupo: reader.readObjectOrNull<ModelGrupalGruposData>(
          offsets[5],
          ModelGrupalGruposDataSchema.deserialize,
          allOffsets,
        ) ??
        ModelGrupalGruposData(),
    latitud: reader.readDouble(offsets[6]),
    longitud: reader.readDouble(offsets[7]),
  );
  object.id = id;
  return object;
}

P _isarGrupalSubidaDocumentosDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ModelGrupalReproAgregarData>(
            offset,
            ModelGrupalReproAgregarDataSchema.deserialize,
            allOffsets,
            ModelGrupalReproAgregarData(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<ModelGrupalReproCambiarData>(
            offset,
            ModelGrupalReproCambiarDataSchema.deserialize,
            allOffsets,
            ModelGrupalReproCambiarData(),
          ) ??
          []) as P;
    case 2:
      return (reader.readObjectList<ModelGrupalTiposDocumentosData>(
            offset,
            ModelGrupalTiposDocumentosDataSchema.deserialize,
            allOffsets,
            ModelGrupalTiposDocumentosData(),
          ) ??
          []) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readObjectList<ModelGrupalTiposDocumentosImagenData>(
            offset,
            ModelGrupalTiposDocumentosImagenDataSchema.deserialize,
            allOffsets,
            ModelGrupalTiposDocumentosImagenData(),
          ) ??
          []) as P;
    case 5:
      return (reader.readObjectOrNull<ModelGrupalGruposData>(
            offset,
            ModelGrupalGruposDataSchema.deserialize,
            allOffsets,
          ) ??
          ModelGrupalGruposData()) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarGrupalSubidaDocumentosGetId(IsarGrupalSubidaDocumentos object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarGrupalSubidaDocumentosGetLinks(
    IsarGrupalSubidaDocumentos object) {
  return [];
}

void _isarGrupalSubidaDocumentosAttach(
    IsarCollection<dynamic> col, Id id, IsarGrupalSubidaDocumentos object) {
  object.id = id;
}

extension IsarGrupalSubidaDocumentosQueryWhereSort on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QWhere> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarGrupalSubidaDocumentosQueryWhere on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QWhereClause> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterWhereClause> idBetween(
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

extension IsarGrupalSubidaDocumentosQueryFilter on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QFilterCondition> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> agregarLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'agregar',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> cambiarLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cambiar',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> documentosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documentos',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> fechaGreaterThan(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> fechaLessThan(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> fechaBetween(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> imagenesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imagenes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> latitudEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> latitudGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> latitudLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> latitudBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitud',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> longitudEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> longitudGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> longitudLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> longitudBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitud',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IsarGrupalSubidaDocumentosQueryObject on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QFilterCondition> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
          QAfterFilterCondition>
      agregarElement(FilterQuery<ModelGrupalReproAgregarData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'agregar');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
          QAfterFilterCondition>
      cambiarElement(FilterQuery<ModelGrupalReproCambiarData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cambiar');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
          QAfterFilterCondition>
      documentosElement(FilterQuery<ModelGrupalTiposDocumentosData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'documentos');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
          QAfterFilterCondition>
      imagenesElement(FilterQuery<ModelGrupalTiposDocumentosImagenData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'imagenes');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterFilterCondition> infoGrupo(FilterQuery<ModelGrupalGruposData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'infoGrupo');
    });
  }
}

extension IsarGrupalSubidaDocumentosQueryLinks on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QFilterCondition> {}

extension IsarGrupalSubidaDocumentosQuerySortBy on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QSortBy> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByLatitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitud', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByLatitudDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitud', Sort.desc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByLongitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitud', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> sortByLongitudDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitud', Sort.desc);
    });
  }
}

extension IsarGrupalSubidaDocumentosQuerySortThenBy on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QSortThenBy> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByLatitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitud', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByLatitudDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitud', Sort.desc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByLongitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitud', Sort.asc);
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QAfterSortBy> thenByLongitudDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitud', Sort.desc);
    });
  }
}

extension IsarGrupalSubidaDocumentosQueryWhereDistinct on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QDistinct> {
  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QDistinct> distinctByLatitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitud');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos,
      QDistinct> distinctByLongitud() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitud');
    });
  }
}

extension IsarGrupalSubidaDocumentosQueryProperty on QueryBuilder<
    IsarGrupalSubidaDocumentos, IsarGrupalSubidaDocumentos, QQueryProperty> {
  QueryBuilder<IsarGrupalSubidaDocumentos, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, List<ModelGrupalReproAgregarData>,
      QQueryOperations> agregarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'agregar');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, List<ModelGrupalReproCambiarData>,
      QQueryOperations> cambiarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cambiar');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, List<ModelGrupalTiposDocumentosData>,
      QQueryOperations> documentosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentos');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, DateTime, QQueryOperations>
      fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<
      IsarGrupalSubidaDocumentos,
      List<ModelGrupalTiposDocumentosImagenData>,
      QQueryOperations> imagenesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagenes');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, ModelGrupalGruposData,
      QQueryOperations> infoGrupoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'infoGrupo');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, double, QQueryOperations>
      latitudProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitud');
    });
  }

  QueryBuilder<IsarGrupalSubidaDocumentos, double, QQueryOperations>
      longitudProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitud');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelGrupalGruposDataSchema = Schema(
  name: r'ModelGrupalGruposData',
  id: 9055978795124921557,
  properties: {
    r'creCredito': PropertySchema(
      id: 0,
      name: r'creCredito',
      type: IsarType.string,
    ),
    r'creId': PropertySchema(
      id: 1,
      name: r'creId',
      type: IsarType.long,
    ),
    r'estadoDoc': PropertySchema(
      id: 2,
      name: r'estadoDoc',
      type: IsarType.string,
    ),
    r'grpGrupo': PropertySchema(
      id: 3,
      name: r'grpGrupo',
      type: IsarType.long,
    ),
    r'grpNombre': PropertySchema(
      id: 4,
      name: r'grpNombre',
      type: IsarType.string,
    ),
    r'idDocumentoCr': PropertySchema(
      id: 5,
      name: r'idDocumentoCr',
      type: IsarType.long,
    ),
    r'reuNumero': PropertySchema(
      id: 6,
      name: r'reuNumero',
      type: IsarType.long,
    )
  },
  estimateSize: _modelGrupalGruposDataEstimateSize,
  serialize: _modelGrupalGruposDataSerialize,
  deserialize: _modelGrupalGruposDataDeserialize,
  deserializeProp: _modelGrupalGruposDataDeserializeProp,
);

int _modelGrupalGruposDataEstimateSize(
  ModelGrupalGruposData object,
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
    final value = object.estadoDoc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.grpNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelGrupalGruposDataSerialize(
  ModelGrupalGruposData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.creCredito);
  writer.writeLong(offsets[1], object.creId);
  writer.writeString(offsets[2], object.estadoDoc);
  writer.writeLong(offsets[3], object.grpGrupo);
  writer.writeString(offsets[4], object.grpNombre);
  writer.writeLong(offsets[5], object.idDocumentoCr);
  writer.writeLong(offsets[6], object.reuNumero);
}

ModelGrupalGruposData _modelGrupalGruposDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelGrupalGruposData(
    creCredito: reader.readStringOrNull(offsets[0]),
    creId: reader.readLongOrNull(offsets[1]),
    estadoDoc: reader.readStringOrNull(offsets[2]),
    grpGrupo: reader.readLongOrNull(offsets[3]),
    grpNombre: reader.readStringOrNull(offsets[4]),
    idDocumentoCr: reader.readLongOrNull(offsets[5]),
    reuNumero: reader.readLongOrNull(offsets[6]),
  );
  return object;
}

P _modelGrupalGruposDataDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelGrupalGruposDataQueryFilter on QueryBuilder<
    ModelGrupalGruposData, ModelGrupalGruposData, QFilterCondition> {
  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creCredito',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creCredito',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoEqualTo(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoGreaterThan(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoLessThan(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoBetween(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoStartsWith(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoEndsWith(
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

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      creCreditoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'creCredito',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      creCreditoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'creCredito',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creCredito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creCreditoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'creCredito',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creId',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creId',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> creIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estadoDoc',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estadoDoc',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estadoDoc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      estadoDocContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'estadoDoc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      estadoDocMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'estadoDoc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estadoDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> estadoDocIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'estadoDoc',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grpGrupo',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grpGrupo',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grpGrupo',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grpGrupo',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grpGrupo',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpGrupoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grpGrupo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grpNombre',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grpNombre',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grpNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      grpNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'grpNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
          QAfterFilterCondition>
      grpNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'grpNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grpNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> grpNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'grpNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idDocumentoCr',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idDocumentoCr',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idDocumentoCr',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idDocumentoCr',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idDocumentoCr',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> idDocumentoCrBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idDocumentoCr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reuNumero',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reuNumero',
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reuNumero',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reuNumero',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reuNumero',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalGruposData, ModelGrupalGruposData,
      QAfterFilterCondition> reuNumeroBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reuNumero',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelGrupalGruposDataQueryObject on QueryBuilder<
    ModelGrupalGruposData, ModelGrupalGruposData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelGrupalTiposDocumentosDataSchema = Schema(
  name: r'ModelGrupalTiposDocumentosData',
  id: 3305726681830460765,
  properties: {
    r'tddEsObligatorio': PropertySchema(
      id: 0,
      name: r'tddEsObligatorio',
      type: IsarType.long,
    ),
    r'tddId': PropertySchema(
      id: 1,
      name: r'tddId',
      type: IsarType.long,
    ),
    r'tddNombreDocumento': PropertySchema(
      id: 2,
      name: r'tddNombreDocumento',
      type: IsarType.string,
    )
  },
  estimateSize: _modelGrupalTiposDocumentosDataEstimateSize,
  serialize: _modelGrupalTiposDocumentosDataSerialize,
  deserialize: _modelGrupalTiposDocumentosDataDeserialize,
  deserializeProp: _modelGrupalTiposDocumentosDataDeserializeProp,
);

int _modelGrupalTiposDocumentosDataEstimateSize(
  ModelGrupalTiposDocumentosData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.tddNombreDocumento;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelGrupalTiposDocumentosDataSerialize(
  ModelGrupalTiposDocumentosData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.tddEsObligatorio);
  writer.writeLong(offsets[1], object.tddId);
  writer.writeString(offsets[2], object.tddNombreDocumento);
}

ModelGrupalTiposDocumentosData _modelGrupalTiposDocumentosDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelGrupalTiposDocumentosData(
    tddEsObligatorio: reader.readLongOrNull(offsets[0]),
    tddId: reader.readLongOrNull(offsets[1]),
    tddNombreDocumento: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _modelGrupalTiposDocumentosDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelGrupalTiposDocumentosDataQueryFilter on QueryBuilder<
    ModelGrupalTiposDocumentosData,
    ModelGrupalTiposDocumentosData,
    QFilterCondition> {
  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tddEsObligatorio',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tddEsObligatorio',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tddEsObligatorio',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tddEsObligatorio',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tddEsObligatorio',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddEsObligatorioBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tddEsObligatorio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tddId',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tddId',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tddId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tddId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tddId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tddId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tddNombreDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tddNombreDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tddNombreDocumento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
          QAfterFilterCondition>
      tddNombreDocumentoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tddNombreDocumento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
          QAfterFilterCondition>
      tddNombreDocumentoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tddNombreDocumento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tddNombreDocumento',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosData, ModelGrupalTiposDocumentosData,
      QAfterFilterCondition> tddNombreDocumentoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tddNombreDocumento',
        value: '',
      ));
    });
  }
}

extension ModelGrupalTiposDocumentosDataQueryObject on QueryBuilder<
    ModelGrupalTiposDocumentosData,
    ModelGrupalTiposDocumentosData,
    QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelGrupalTiposDocumentosImagenDataSchema = Schema(
  name: r'ModelGrupalTiposDocumentosImagenData',
  id: 7895202131735312637,
  properties: {
    r'cambio': PropertySchema(
      id: 0,
      name: r'cambio',
      type: IsarType.long,
    ),
    r'imagen': PropertySchema(
      id: 1,
      name: r'imagen',
      type: IsarType.string,
    ),
    r'microSeg': PropertySchema(
      id: 2,
      name: r'microSeg',
      type: IsarType.string,
    ),
    r'tipo': PropertySchema(
      id: 3,
      name: r'tipo',
      type: IsarType.long,
    )
  },
  estimateSize: _modelGrupalTiposDocumentosImagenDataEstimateSize,
  serialize: _modelGrupalTiposDocumentosImagenDataSerialize,
  deserialize: _modelGrupalTiposDocumentosImagenDataDeserialize,
  deserializeProp: _modelGrupalTiposDocumentosImagenDataDeserializeProp,
);

int _modelGrupalTiposDocumentosImagenDataEstimateSize(
  ModelGrupalTiposDocumentosImagenData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.imagen;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.microSeg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelGrupalTiposDocumentosImagenDataSerialize(
  ModelGrupalTiposDocumentosImagenData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cambio);
  writer.writeString(offsets[1], object.imagen);
  writer.writeString(offsets[2], object.microSeg);
  writer.writeLong(offsets[3], object.tipo);
}

ModelGrupalTiposDocumentosImagenData
    _modelGrupalTiposDocumentosImagenDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelGrupalTiposDocumentosImagenData(
    cambio: reader.readLongOrNull(offsets[0]),
    imagen: reader.readStringOrNull(offsets[1]),
    microSeg: reader.readStringOrNull(offsets[2]),
    tipo: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _modelGrupalTiposDocumentosImagenDataDeserializeProp<P>(
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
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelGrupalTiposDocumentosImagenDataQueryFilter on QueryBuilder<
    ModelGrupalTiposDocumentosImagenData,
    ModelGrupalTiposDocumentosImagenData,
    QFilterCondition> {
  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cambio',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cambio',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cambio',
        value: value,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cambio',
        value: value,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cambio',
        value: value,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> cambioBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cambio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imagen',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imagen',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
          ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition>
      imagenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
          ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition>
      imagenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagen',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagen',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> imagenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagen',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'microSeg',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'microSeg',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'microSeg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
          ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition>
      microSegContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'microSeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
          ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition>
      microSegMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'microSeg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'microSeg',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> microSegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'microSeg',
        value: '',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> tipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> tipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> tipoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<
      ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData,
      QAfterFilterCondition> tipoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition> tipoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalTiposDocumentosImagenData,
      ModelGrupalTiposDocumentosImagenData, QAfterFilterCondition> tipoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelGrupalTiposDocumentosImagenDataQueryObject on QueryBuilder<
    ModelGrupalTiposDocumentosImagenData,
    ModelGrupalTiposDocumentosImagenData,
    QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelGrupalReproAgregarDataSchema = Schema(
  name: r'ModelGrupalReproAgregarData',
  id: 4127478186126670159,
  properties: {
    r'dorTipoDocumento': PropertySchema(
      id: 0,
      name: r'dorTipoDocumento',
      type: IsarType.long,
    )
  },
  estimateSize: _modelGrupalReproAgregarDataEstimateSize,
  serialize: _modelGrupalReproAgregarDataSerialize,
  deserialize: _modelGrupalReproAgregarDataDeserialize,
  deserializeProp: _modelGrupalReproAgregarDataDeserializeProp,
);

int _modelGrupalReproAgregarDataEstimateSize(
  ModelGrupalReproAgregarData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _modelGrupalReproAgregarDataSerialize(
  ModelGrupalReproAgregarData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.dorTipoDocumento);
}

ModelGrupalReproAgregarData _modelGrupalReproAgregarDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelGrupalReproAgregarData(
    dorTipoDocumento: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _modelGrupalReproAgregarDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelGrupalReproAgregarDataQueryFilter on QueryBuilder<
    ModelGrupalReproAgregarData,
    ModelGrupalReproAgregarData,
    QFilterCondition> {
  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dorTipoDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dorTipoDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproAgregarData, ModelGrupalReproAgregarData,
      QAfterFilterCondition> dorTipoDocumentoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dorTipoDocumento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelGrupalReproAgregarDataQueryObject on QueryBuilder<
    ModelGrupalReproAgregarData,
    ModelGrupalReproAgregarData,
    QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ModelGrupalReproCambiarDataSchema = Schema(
  name: r'ModelGrupalReproCambiarData',
  id: -6894681539793488863,
  properties: {
    r'dodId': PropertySchema(
      id: 0,
      name: r'dodId',
      type: IsarType.long,
    ),
    r'dodObservacion': PropertySchema(
      id: 1,
      name: r'dodObservacion',
      type: IsarType.string,
    ),
    r'dodPathImagen': PropertySchema(
      id: 2,
      name: r'dodPathImagen',
      type: IsarType.string,
    ),
    r'dorTipoDocumento': PropertySchema(
      id: 3,
      name: r'dorTipoDocumento',
      type: IsarType.long,
    )
  },
  estimateSize: _modelGrupalReproCambiarDataEstimateSize,
  serialize: _modelGrupalReproCambiarDataSerialize,
  deserialize: _modelGrupalReproCambiarDataDeserialize,
  deserializeProp: _modelGrupalReproCambiarDataDeserializeProp,
);

int _modelGrupalReproCambiarDataEstimateSize(
  ModelGrupalReproCambiarData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dodObservacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dodPathImagen;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelGrupalReproCambiarDataSerialize(
  ModelGrupalReproCambiarData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.dodId);
  writer.writeString(offsets[1], object.dodObservacion);
  writer.writeString(offsets[2], object.dodPathImagen);
  writer.writeLong(offsets[3], object.dorTipoDocumento);
}

ModelGrupalReproCambiarData _modelGrupalReproCambiarDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModelGrupalReproCambiarData(
    dodId: reader.readLongOrNull(offsets[0]),
    dodObservacion: reader.readStringOrNull(offsets[1]),
    dodPathImagen: reader.readStringOrNull(offsets[2]),
    dorTipoDocumento: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _modelGrupalReproCambiarDataDeserializeProp<P>(
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
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ModelGrupalReproCambiarDataQueryFilter on QueryBuilder<
    ModelGrupalReproCambiarData,
    ModelGrupalReproCambiarData,
    QFilterCondition> {
  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dodId',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dodId',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dodId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dodId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dodId',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dodId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dodObservacion',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dodObservacion',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dodObservacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
          QAfterFilterCondition>
      dodObservacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dodObservacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
          QAfterFilterCondition>
      dodObservacionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dodObservacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dodObservacion',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodObservacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dodObservacion',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dodPathImagen',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dodPathImagen',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dodPathImagen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
          QAfterFilterCondition>
      dodPathImagenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dodPathImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
          QAfterFilterCondition>
      dodPathImagenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dodPathImagen',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dodPathImagen',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dodPathImagenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dodPathImagen',
        value: '',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dorTipoDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dorTipoDocumento',
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dorTipoDocumento',
        value: value,
      ));
    });
  }

  QueryBuilder<ModelGrupalReproCambiarData, ModelGrupalReproCambiarData,
      QAfterFilterCondition> dorTipoDocumentoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dorTipoDocumento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ModelGrupalReproCambiarDataQueryObject on QueryBuilder<
    ModelGrupalReproCambiarData,
    ModelGrupalReproCambiarData,
    QFilterCondition> {}
