import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:integra_espoir/01-login/models/login_model.dart';
import 'package:integra_espoir/config/constants/enviroment.dart';
import 'package:integra_espoir/config/models/error_model.dart';

class WebServer {
  final dio = Dio(BaseOptions(baseUrl: Environment.apiUrl));
  final storage = const FlutterSecureStorage();

  Future<Map<String, dynamic>> conectToServerLogin(Map argData) async {
    try {
      final response = await dio.post('/loginMovil', data: argData);
      final jsonBody = ModelLogin.fromJson(response.data);
      if (jsonBody.data.first.aiReturn == 1) {
        await storage.write(key: 'idToken', value: jsonBody.data[0].token);
        await storage.write(key: 'idUser', value: argData['usuario'].toString().toUpperCase());
        await storage.write(key: 'idPass', value: argData['password']);
        return response.data;
      } else {
        return {'success': false, 'data': [], 'message': 'Error al generar el token de acceso'};
      }
    } on DioException catch (e) {
      DioExceptionType error = e.type;
      if (e.response != null) {
        if (error is DioException) {
          switch (error) {
            case DioExceptionType.badCertificate:
              return {'success': false, 'data': [], 'message': 'Error al conectar con el certificado'};
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
              return {'success': false, 'data': [], 'message': 'Error de tiempo excedido'};
            case DioExceptionType.badResponse:
              final Map<String, dynamic> dataError = jsonDecode(e.response.toString());
              return dataError;
            case DioExceptionType.cancel:
              return {'success': false, 'data': [], 'message': 'Error de cancelacion de consulta'};
            case DioExceptionType.connectionError:
              return {'success': false, 'data': [], 'message': 'Error al conectar con el servidor'};
            case DioExceptionType.unknown:
              return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 1'};
          }
        }
      } else if (e.response == null) {
        return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 2'};
      }
      final jsonBody = ModelError.fromJson(json.decode(e.response.toString()));
      return {'success': false, 'data': [], 'message': 'Error ${jsonBody.message}'};
    } catch (e) {
      return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 3'};
    }
  }

  Future<Map<String, dynamic>> conectToServerExecute(Map argData, {String? metodo = 'execute'}) async {
    String cod = '';
    try {
      final token = await storage.read(key: 'idToken');
      cod = argData['codigo'];
      final response = await dio.post('/$metodo', data: argData, options: Options(headers: {'Authorization': token}));
      return response.data;
    } on DioException catch (e) {
      DioExceptionType error = e.type;
      if (e.response != null) {
        if (error is DioException) {
          switch (error) {
            case DioExceptionType.badCertificate:
              return {'success': false, 'data': [], 'message': '[COD-$cod]: Error al conectar con el certificado'};
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
              return {'success': false, 'data': [], 'message': '[COD-$cod]: Error de tiempo excedido'};
            case DioExceptionType.badResponse:
              final Map<String, dynamic> dataError = jsonDecode(e.response.toString());
              return dataError;
            case DioExceptionType.cancel:
              return {'success': false, 'data': [], 'message': '[COD-$cod]: Error de cancelacion de consulta'};
            case DioExceptionType.connectionError:
              return {'success': false, 'data': [], 'message': '[COD-$cod]: Error al conectar con el servidor'};
            case DioExceptionType.unknown:
              return {'success': false, 'data': [], 'message': '[COD-$cod]: Error en el servidor desconocido 4'};
          }
        }
      } else if (e.response == null) {
        return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 5'};
      }
      final jsonBody = ModelError.fromJson(json.decode(e.response.toString()));
      return {'success': false, 'data': [], 'message': 'Error ${jsonBody.message}'};
    } catch (e) {
      return {'success': false, 'data': [], 'message': '[COD-$cod]: Error en el servidor desconocido 6'};
    }
  }

  conectToLogsAuditoria({required int argLog, required String argEntrada, required String argResultado}) async {
    try {
      final token = await storage.read(key: 'idToken');
      final idUser = await storage.read(key: 'idUser');
      final response = await dio.post(
        '/execute',
        data: {
          'codigo': '0109',
          'AS_USUARIO': idUser,
          'AI_TIPO_LOG': argLog,
          'AS_ENTRADA': argEntrada,
          'AS_RESULTADO': argResultado,
        },
        options: Options(headers: {'Authorization': token}),
      );
      return response.data;
    } on DioException catch (e) {
      DioExceptionType error = e.type;
      if (e.response != null) {
        if (error is DioException) {
          switch (error) {
            case DioExceptionType.badCertificate:
            //return {'success': false, 'data': [], 'message': 'Error al conectar con el certificado'};
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
            //return {'success': false, 'data': [], 'message': 'Error de tiempo excedido'};
            case DioExceptionType.badResponse:
            //final Map<String, dynamic> dataError = jsonDecode(e.response.toString());
            //return dataError;
            case DioExceptionType.cancel:
            //return {'success': false, 'data': [], 'message': 'Error de cancelacion de consulta'};
            case DioExceptionType.connectionError:
            //return {'success': false, 'data': [], 'message': 'Error al conectar con el servidor'};
            case DioExceptionType.unknown:
            //return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 1'};
          }
        }
      }
      //final jsonBody = ModelError.fromJson(json.decode(e.response!.data));
      //return {'success': false, 'data': [], 'message': 'Error ${jsonBody.message}'};
    } catch (e) {
      //return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 2'};
    }
  }

  Future<Map<String, dynamic>> conectToServerUploadFile(FormData formData) async {
    try {
      final token = await storage.read(key: 'idToken');
      final response = await dio.post('/uploadFile', data: formData, options: Options(headers: {'Authorization': token}));
      return {
        'success': true,
        'data': [response.data],
        'message': 'Ok'
      };
    } on DioException catch (e) {
      DioExceptionType error = e.type;
      if (e.response != null) {
        if (error is DioException) {
          switch (error) {
            case DioExceptionType.badCertificate:
              return {'success': false, 'data': [], 'message': '[COD-Upload]: Error al conectar con el certificado'};
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
              return {'success': false, 'data': [], 'message': '[COD-Upload]: Error de tiempo excedido'};
            case DioExceptionType.badResponse:
              final Map<String, dynamic> dataError = jsonDecode(e.response.toString());
              return dataError;
            case DioExceptionType.cancel:
              return {'success': false, 'data': [], 'message': '[COD-Upload]: Error de cancelacion de consulta'};
            case DioExceptionType.connectionError:
              return {'success': false, 'data': [], 'message': '[COD-Upload]: Error al conectar con el servidor'};
            case DioExceptionType.unknown:
              return {'success': false, 'data': [], 'message': '[COD-Upload]: Error en el servidor desconocido 4'};
          }
        }
      } else if (e.response == null) {
        return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 5'};
      }

      final jsonBody = ModelError.fromJson(json.decode(e.response.toString()));
      return {'success': false, 'data': [], 'message': 'Error ${jsonBody.message}'};
    } catch (e) {
      return {'success': false, 'data': [], 'message': '[COD-Upload]: Error en el servidor desconocido 6'};
    }
  }

  conectToServerGetFile(String pathImagen) async {
    try {
      final token = await storage.read(key: 'idToken');
      Response response = await dio.get('/getFileMovil',
          queryParameters: {'path': pathImagen}, options: Options(headers: {'Authorization': token}));
      return response.data;
    } on DioException catch (e) {
      DioExceptionType error = e.type;
      if (e.response != null) {
        if (error is DioException) {
          switch (error) {
            case DioExceptionType.badCertificate:
              return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error al conectar con el certificado'};
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
              return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error de tiempo excedido'};
            case DioExceptionType.badResponse:
              final Map<String, dynamic> dataError = jsonDecode(e.response.toString());
              return dataError;
            case DioExceptionType.cancel:
              return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error de cancelacion de consulta'};
            case DioExceptionType.connectionError:
              return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error al conectar con el servidor'};
            case DioExceptionType.unknown:
              return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error en el servidor desconocido 4'};
          }
        }
      } else if (e.response == null) {
        return {'success': false, 'data': [], 'message': 'Error en el servidor desconocido 5'};
      }
      final jsonBody = ModelError.fromJson(json.decode(e.response.toString()));
      return {'success': false, 'data': [], 'message': 'Error ${jsonBody.message}'};
    } catch (e) {
      return {'success': false, 'data': [], 'message': '[COD-GetFile]: Error en el servidor desconocido 6'};
    }
  }
}
