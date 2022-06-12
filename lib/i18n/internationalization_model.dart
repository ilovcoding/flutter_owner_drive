import 'dart:convert';

import 'package:flutter/services.dart';

class InternationalizationModel {
  String welcomeODisk = "";
  String singUp = "";
  String yourEmail = "";
  String login = "";
  InternationalizationModel({singUp, yourEmail, welcomeODisk,login});

  InternationalizationModel.fromJson(Map<String, dynamic> json) {
    welcomeODisk = json["welcomeODisk"];
    login = json["login"];
    singUp = json["singUp"];
    yourEmail = json['yourEmail'];
  }

  @override
  String toString() {
    return "";
  }
}

Future<InternationalizationModel> loadLangueData(String langue) async {
  String filePath = "assets/i18n/json/$langue.json";
  String jsonString = await rootBundle.loadString(filePath, cache: true);
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  InternationalizationModel res = InternationalizationModel.fromJson(jsonMap);
  return res;
}
