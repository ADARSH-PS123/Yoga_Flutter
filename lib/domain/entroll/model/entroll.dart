// To parse this JSON data, do
//
//     final entroll = entrollFromJson(jsonString);

import 'dart:convert';

Entroll entrollFromJson(String str) => Entroll.fromJson(json.decode(str));

String entrollToJson(Entroll data) => json.encode(data.toJson());

class Entroll {
  Entroll({
    this.data,
    this.message,
    this.status,
  });

  List<dynamic>? data;
  String? message;
  bool? status;

  factory Entroll.fromJson(Map<String, dynamic> json) => Entroll(
        data: json["data"] == null
            ? []
            : List<dynamic>.from(json["data"]!.map((x) => x)),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
        "message": message,
        "status": status,
      };
}
