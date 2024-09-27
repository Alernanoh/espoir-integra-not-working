import 'dart:convert';

class ModelLogin {
  final bool success;
  final List<ModelLoginData> data;
  final String message;

  ModelLogin({
    required this.success,
    required this.data,
    required this.message,
  });

  factory ModelLogin.fromRawJson(String str) => ModelLogin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelLogin.fromJson(Map<String, dynamic> json) => ModelLogin(
        success: json["success"],
        data: List<ModelLoginData>.from(json["data"].map((x) => ModelLoginData.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class ModelLoginData {
  final int aiReturn;
  final String mensaje;
  final String token;

  ModelLoginData({
    required this.aiReturn,
    required this.mensaje,
    required this.token,
  });

  factory ModelLoginData.fromRawJson(String str) => ModelLoginData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelLoginData.fromJson(Map<String, dynamic> json) => ModelLoginData(
        aiReturn: json["AI_RETURN"],
        mensaje: json["MENSAJE"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "AI_RETURN": aiReturn,
        "MENSAJE": mensaje,
        "token": token,
      };
}
