// To parse this JSON data, do
//
//     final programs = programsFromJson(jsonString);

import 'dart:convert';

Programs programsFromJson(String str) => Programs.fromJson(json.decode(str));

String programsToJson(Programs data) => json.encode(data.toJson());

class Programs {
  Programs({
    this.data,
    this.status,
  });

  List<Datum>? data;
  int? status;

  factory Programs.fromJson(Map<String, dynamic> json) => Programs(
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
  Datum({
    this.id,
    this.mainTitle,
    this.subTitle,
    this.image,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? mainTitle;
  String? subTitle;
  String? image;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        mainTitle: json["main_title"],
        subTitle: json["sub_title"],
        image: json["image"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main_title": mainTitle,
        "sub_title": subTitle,
        "image": image,
        "description": description,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
