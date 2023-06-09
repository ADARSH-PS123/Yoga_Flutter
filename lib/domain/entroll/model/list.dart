// To parse this JSON data, do
//
//     final getList = getListFromJson(jsonString);

import 'dart:convert';

GetList getListFromJson(String str) => GetList.fromJson(json.decode(str));

String getListToJson(GetList data) => json.encode(data.toJson());

class GetList {
  List<Datum>? data;
  int? status;

  GetList({
    this.data,
    this.status,
  });

  factory GetList.fromJson(Map<String, dynamic> json) => GetList(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "status": status,
      };
}

class Datum {
  int? id;
  int? userId;
  String? progrmName;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.userId,
    this.progrmName,
    this.createdAt,
    this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        progrmName: json["progrm_name"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "progrm_name": progrmName,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
