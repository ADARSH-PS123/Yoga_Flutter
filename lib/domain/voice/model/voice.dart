// To parse this JSON data, do
//
//     final voiceData = voiceDataFromJson(jsonString);

import 'dart:convert';

VoiceData voiceDataFromJson(String str) => VoiceData.fromJson(json.decode(str));

String voiceDataToJson(VoiceData data) => json.encode(data.toJson());

class VoiceData {
  List<Datum>? data;
  int? status;

  VoiceData({
    this.data,
    this.status,
  });

  factory VoiceData.fromJson(Map<String, dynamic> json) => VoiceData(
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
  String? title;
  String? image;
  String? audio;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.title,
    this.image,
    this.audio,
    this.createdAt,
    this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        audio: json["audio"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "audio": audio,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
