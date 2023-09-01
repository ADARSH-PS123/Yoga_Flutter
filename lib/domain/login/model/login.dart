 // To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    String? token;
    Data? data;
    bool? status;

    Login({
        this.token,
        this.data,
        this.status,
    });

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        token: json["token"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "data": data?.toJson(),
        "status": status,
    };
}

class Data {
    int? id;
    String? name;
    String? email;
    String? mobile;
    String? role;
    dynamic emailVerifiedAt;
    int? voiceOfSky;
    dynamic voiceOfSkySubscribeDate;
    int? skyWisdome;
    dynamic skyWisdomeSubscribeDate;
    DateTime? createdAt;
    DateTime? updatedAt;

    Data({
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

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        role: json["role"],
        emailVerifiedAt: json["email_verified_at"],
        voiceOfSky: json["voice_of_sky"],
        voiceOfSkySubscribeDate: json["voice_of_sky_subscribe_date"],
        skyWisdome: json["sky_wisdome"],
        skyWisdomeSubscribeDate: json["sky_wisdome_subscribe_date"],
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
        "voice_of_sky_subscribe_date": voiceOfSkySubscribeDate,
        "sky_wisdome": skyWisdome,
        "sky_wisdome_subscribe_date": skyWisdomeSubscribeDate,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
