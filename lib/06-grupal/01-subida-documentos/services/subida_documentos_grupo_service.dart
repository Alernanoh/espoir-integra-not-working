import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/database/isar_subida_documentos.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/models/grupal_guardar_paths_model.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/models/grupal_images_tipo_model.dart';
import 'package:integra_espoir/06-grupal/01-subida-documentos/models/grupal_upload_file_model.dart';
import 'package:integra_espoir/config/service/web_server.dart';
import 'package:path_provider/path_provider.dart';

class SubidaDocumentosGrupoState {
  final int idIsar;
  final List<ModelGrupalGruposData> infoGrupo;
  final double latitud;
  final double longitud;
  final List<ModelGrupalTiposDocumentosData> documentos;
  final List<ModelGrupalTiposDocumentosImagenData> imagenes;
  final List<int> agregar;
  final List<ModelGrupalReproCambiarData> cambiar;
  final String errorMessage;
  final List<ModelGrupalPathTipo> pathImages;
  final bool guardarDatos;

  SubidaDocumentosGrupoState({
    this.idIsar = 0,
    this.infoGrupo = const [],
    this.latitud = 0,
    this.longitud = 0,
    this.documentos = const [],
    this.imagenes = const [],
    this.agregar = const [],
    this.cambiar = const [],
    this.errorMessage = '',
    this.pathImages = const [],
    this.guardarDatos = false,
  });

  SubidaDocumentosGrupoState copyWith({
    int? idIsar,
    List<ModelGrupalGruposData>? infoGrupo,
    double? latitud,
    double? longitud,
    List<ModelGrupalTiposDocumentosData>? documentos,
    List<ModelGrupalTiposDocumentosImagenData>? imagenes,
    List<int>? agregar,
    List<ModelGrupalReproCambiarData>? cambiar,
    String? errorMessage,
    List<ModelGrupalPathTipo>? pathImages,
    bool? guardarDatos,
  }) =>
      SubidaDocumentosGrupoState(
        idIsar: idIsar ?? this.idIsar,
        infoGrupo: infoGrupo ?? this.infoGrupo,
        latitud: latitud ?? this.latitud,
        longitud: longitud ?? this.longitud,
        documentos: documentos ?? this.documentos,
        imagenes: imagenes ?? this.imagenes,
        agregar: agregar ?? this.agregar,
        cambiar: cambiar ?? this.cambiar,
        errorMessage: errorMessage ?? this.errorMessage,
        pathImages: pathImages ?? this.pathImages,
        guardarDatos: guardarDatos ?? this.guardarDatos,
      );
}

class SubidaDocumentosGrupoNotifier extends StateNotifier<SubidaDocumentosGrupoState> {
  final storage = const FlutterSecureStorage();
  SubidaDocumentosGrupoNotifier() : super(SubidaDocumentosGrupoState());

  onChangeData({
    required int idIsar,
    required List<ModelGrupalGruposData> infoGrupo,
    required double latitud,
    required longitud,
    required List<ModelGrupalTiposDocumentosData> documentos,
    required List<ModelGrupalTiposDocumentosImagenData> imagenes,
    required List<ModelGrupalReproAgregarData> agregar,
    required List<ModelGrupalReproCambiarData> cambiar,
  }) {
    List<int> auxAgregar = [];
    for (var element in agregar) {
      auxAgregar.add(element.dorTipoDocumento ?? 0);
    }
    state = state.copyWith(
      idIsar: idIsar,
      infoGrupo: infoGrupo,
      latitud: latitud,
      longitud: longitud,
      documentos: documentos,
      imagenes: imagenes,
      errorMessage: '',
      pathImages: const [],
      agregar: auxAgregar,
      cambiar: cambiar,
      guardarDatos: false,
    );
  }

  onChangeCoordenadas(Position coordenadas) {
    state = state.copyWith(
      latitud: coordenadas.latitude,
      longitud: coordenadas.longitude,
      errorMessage: '',
      guardarDatos: false,
    );
  }

  onchangeErrorMessage(String errorMessage) {
    state = state.copyWith(errorMessage: errorMessage, guardarDatos: false);
  }

  onAddImagen(ModelGrupalTiposDocumentosImagenData foto) {
    final imgs = [...state.imagenes];
    imgs.add(foto);
    state = state.copyWith(imagenes: imgs, errorMessage: '', guardarDatos: false);
  }

  onAddImagenCambio(ModelGrupalTiposDocumentosImagenData foto){
    final imgs = [...state.imagenes.where((element) => element.cambio != foto.cambio)];
    imgs.add(foto);
    state = state.copyWith(imagenes: imgs, errorMessage: '', guardarDatos: false);
  }

  onDeleteImagen(String microSeg) {
    final imgs = [...state.imagenes];
    imgs.removeWhere((item) => item.microSeg == microSeg);
    state = state.copyWith(imagenes: imgs, errorMessage: '', guardarDatos: false);
  }

  String getContImage(int tipoImage) {
    int cont = 0;
    for (var item in state.imagenes) {
      if (tipoImage == item.tipo && item.cambio == 0) cont++;
    }
    return '$cont';
  }

  String getContImageCambio() {
    int cont = 0;
    for (var item in state.imagenes) {
      if (item.cambio != 0) cont++;
    }
    return '$cont';
  }

  onSaveImages(bool isCambio) async {
    for (var item in state.imagenes) {
      Uint8List bytes = base64Decode(item.imagen ?? '');
      String dir = (await getApplicationDocumentsDirectory()).path;
      String fullPath = '$dir/cap_${item.microSeg}.png';
      File file = File(fullPath);
      await file.writeAsBytes(bytes);

      final aux = state.infoGrupo.first;
      Map arg = {'path': 'grupal/${aux.grpNombre}/${aux.creCredito}/${aux.reuNumero}'};
      FormData formData = FormData.fromMap({
        'data': jsonEncode(arg),
        'file': await MultipartFile.fromFile(file.path, filename: 'cap_${item.microSeg}.png'),
      });

      final resp = await WebServer().conectToServerUploadFile(formData);
      final jsonBody = ModelGrupalSaveImages.fromJson(resp);
      if (jsonBody.success!) {
        List<ModelGrupalPathTipo> aux = [...state.pathImages];
        aux.add(ModelGrupalPathTipo(path: jsonBody.data!.first.nombre ?? '', tipo: item.tipo ?? 0, cambio: item.cambio ?? 0));
        state = state.copyWith(pathImages: aux);
      } else {
        state = state.copyWith(errorMessage: 'Problemas al subir las imagenes');
      }
    }
    if (!isCambio) {
      await onSavePath();
    } else {
      await onSavePathCambios();
    }
  }

  bool comprobarObligatorios() {
    if (state.latitud == 0 && state.longitud == 0) {
      onchangeErrorMessage('Ingrese las coordenadas');
      return false;
    }
    for (var item in state.documentos) {
      if (item.tddEsObligatorio == 1) {
        if (state.imagenes.where((element) => element.tipo == item.tddId).isEmpty) {
          onchangeErrorMessage('Ingrese fotos de ${item.tddNombreDocumento ?? ''}');
          return false;
        }
      }
    }
    return true;
  }

  onSavePath() async {
    final idUser = await storage.read(key: 'idUser');

    List aux = [];
    for (var item in state.documentos) {
      if (state.pathImages.where((element) => element.tipo == item.tddId).isNotEmpty) {
        for (var item2 in state.pathImages.where((element) => element.tipo == item.tddId)) {
          aux.add({"tipo": item.tddId, "paths": item2.path});
        }
      }
    }
    Map<String, dynamic> parametros = {
      'codigo': '0139',
      'AI_GRUPO': state.infoGrupo.first.grpGrupo,
      'AS_CREDITO': state.infoGrupo.first.creCredito,
      'AI_NUM_REUNION': state.infoGrupo.first.reuNumero,
      'AI_CRE_ID': state.infoGrupo.first.creId,
      'AS_LATITUD': state.latitud,
      'AS_LONGITUD': state.longitud,
      'AS_IMAGENES': json.encode(aux),
      'AS_USUARIO': idUser,
    };
    final resp = await WebServer().conectToServerExecute(parametros);
    final jsonBody = ModelGrupalSavePaths.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(
        guardarDatos: true,
        errorMessage: '',
      );
    } else {
      state = state.copyWith(
        guardarDatos: true,
        errorMessage: jsonBody.data!.first.mensaje,
      );
    }
  }

  bool comprobarObligatoriosCambios() {
    for (var item in state.agregar) {
      if (state.imagenes.where((element) => element.tipo == item && element.cambio == 0).isEmpty) {
        final tipo = state.documentos.where((element) => element.tddId == item);
        onchangeErrorMessage('Ingrese fotos de ${tipo.first.tddNombreDocumento ?? ''}');
        return false;
      }
    }

    for (var item in state.cambiar) {
      if (state.imagenes.where((element) => element.cambio == item.dodId).length != 1) {
        onchangeErrorMessage('Ingrese todas las fotos en cambios de imagenes');
        return false;
      }
    }
    return true;
  }

  onSavePathCambios() async {
    final idUser = await storage.read(key: 'idUser');

    List aux = [];
    for (var item in state.pathImages) {
      aux.add({"tipo": item.tipo, "paths": item.path, "cambio": item.cambio});
    }

    Map<String, dynamic> parametros = {
      'codigo': '0149',
      'AI_ID_DOCUMENTO_CR': state.infoGrupo.first.idDocumentoCr,
      'AS_IMAGENES': json.encode(aux),
      'AS_USUARIO': idUser,
    };
    final resp = await WebServer().conectToServerExecute(parametros);
    final jsonBody = ModelGrupalSavePaths.fromJson(resp);
    if (jsonBody.success!) {
      state = state.copyWith(
        guardarDatos: true,
        errorMessage: '',
      );
    } else {
      state = state.copyWith(
        guardarDatos: true,
        errorMessage: jsonBody.data!.first.mensaje,
      );
    }
  }
}

final grupalSubDocGrupoProvider =
    StateNotifierProvider<SubidaDocumentosGrupoNotifier, SubidaDocumentosGrupoState>((ref) => SubidaDocumentosGrupoNotifier());
