// To parse this JSON data, do
//
//     final appModel = appModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AppModel appModelFromJson(String str) => AppModel.fromJson(json.decode(str));

String appModelToJson(AppModel data) => json.encode(data.toJson());

class AppModel {
  AppModel({
    required this.applist,
  });

  final Applist applist;

  factory AppModel.fromJson(Map<String, dynamic> json) => AppModel(
        applist: Applist.fromJson(json["applist"]),
      );

  get ImageUrl => null;

  get name => null;

  get appid => null;

  Map<String, dynamic> toJson() => {
        "applist": applist.toJson(),
      };
}

class Applist {
  Applist({
    required this.apps,
  });

  final List<App> apps;

  factory Applist.fromJson(Map<String, dynamic> json) => Applist(
        apps: List<App>.from(json["apps"].map((x) => App.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "apps": List<dynamic>.from(apps.map((x) => x.toJson())),
      };
}

class App {
  App({
    required this.appid,
    required this.name,
    required this.ImageUrl,
  });

  final int appid;
  final String name;
  final String ImageUrl;

  factory App.fromJson(Map<String, dynamic> json) =>
      App(appid: json["appid"], name: json["name"], ImageUrl: "");

  Map<String, dynamic> toJson() => {
        "appid": appid,
        "name": name,
        "imageUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/${appid}/header.jpg"
      };
}
