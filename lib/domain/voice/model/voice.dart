// To parse this JSON data, do
//
//     final voiceData = voiceDataFromJson(jsonString);

import 'dart:convert';

VoiceData voiceDataFromJson(String str) => VoiceData.fromJson(json.decode(str));

String voiceDataToJson(VoiceData data) => json.encode(data.toJson());

class VoiceData {
    List<Datum>? data;
    User? user;
    int? status;

    VoiceData({
        this.data,
        this.user,
        this.status,
    });

    factory VoiceData.fromJson(Map<String, dynamic> json) => VoiceData(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "user": user?.toJson(),
        "status": status,
    };
}

class Datum {
    int? id;
    String? title;
    String? image;
    String? audio;
    String? types;
    DateTime? createdAt;
    DateTime? updatedAt;

    Datum({
        this.id,
        this.title,
        this.image,
        this.audio,
        this.types,
        this.createdAt,
        this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        audio: json["audio"],
        types: json["types"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "audio": audio,
        "types": types,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class User {
    int? id;
    String? name;
    String? email;
    String? mobile;
    String? role;
    dynamic emailVerifiedAt;
    int? voiceOfSky;
    DateTime? voiceOfSkySubscribeDate;
    int? skyWisdome;
    DateTime? skyWisdomeSubscribeDate;
    DateTime? createdAt;
    DateTime? updatedAt;

    User({
        this.id,
        this.name,
        this.email,
        this.mobile,
        this.role,
        this.emailVerifiedAt,
        this.voiceOfSky,
        this.voiceOfSkySubscribeDate,
        this.skyWisdome,
        this.skyWisdomeSubscribeDate,
        this.createdAt,
        this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        role: json["role"],
        emailVerifiedAt: json["email_verified_at"],
        voiceOfSky: json["voice_of_sky"],
        voiceOfSkySubscribeDate: json["voice_of_sky_subscribe_date"] == null ? null : DateTime.parse(json["voice_of_sky_subscribe_date"]),
        skyWisdome: json["sky_wisdome"],
        skyWisdomeSubscribeDate: json["sky_wisdome_subscribe_date"] == null ? null : DateTime.parse(json["sky_wisdome_subscribe_date"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "role": role,
        "email_verified_at": emailVerifiedAt,
        "voice_of_sky": voiceOfSky,
        "voice_of_sky_subscribe_date": "${voiceOfSkySubscribeDate!.year.toString().padLeft(4, '0')}-${voiceOfSkySubscribeDate!.month.toString().padLeft(2, '0')}-${voiceOfSkySubscribeDate!.day.toString().padLeft(2, '0')}",
        "sky_wisdome": skyWisdome,
        "sky_wisdome_subscribe_date": "${skyWisdomeSubscribeDate!.year.toString().padLeft(4, '0')}-${skyWisdomeSubscribeDate!.month.toString().padLeft(2, '0')}-${skyWisdomeSubscribeDate!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
