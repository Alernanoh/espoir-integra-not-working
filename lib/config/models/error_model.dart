import 'dart:convert';

class ModelError {
  final bool? success;
  final List<dynamic>? data;
  final String? message;

  ModelError({
    this.success,
    this.data,
    this.message,
  });

  factory ModelError.fromRawJson(String str) => ModelError.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelError.fromJson(Map<String, dynamic> json) => ModelError(
        success: json["success"],
        data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
        "message": message,
      };
}
