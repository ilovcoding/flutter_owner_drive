import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_owner_drive/i18n/langue.dart';

class InternationalizationModel {
  String welcomeODisk;
  String singUp;
  String yourEmail;
  InternationalizationModel(this.singUp, this.yourEmail, this.welcomeODisk);
}

Future<InternationalizationModel> loadLangue(String langue) async {
  String filePath = "assets/i18n/json/$langue.json";
  String jsonString = await rootBundle.loadString(filePath, cache: true);
  InternationalizationModel res =  jsonDecode(filePath);
  print(res);
  return res;
}

