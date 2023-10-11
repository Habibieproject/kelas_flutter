import 'dart:convert';

import 'package:kelas_flutter/project_train/k3l_app/api/command/preference_handler.dart';

class UserData {
  static Future<Map<String, dynamic>?> _getLoginData() async {
    String? loginDataString = await PreferenceHandler.retrieveDataLogin();
    if (loginDataString != null) {
      return json.decode(loginDataString);
    }
    return null;
  }

  static Future<String?> nama() async {
    Map<String, dynamic>? loginData = await _getLoginData();
    if (loginData != null) {
      String? nama = loginData["DATA"]["0"]["name_last"];
      if (nama != null) {
        return nama;
      }
    }
    return null;
  }

  static Future<String?> nik() async {
    Map<String, dynamic>? loginData = await _getLoginData();
    if (loginData != null) {
      String? nik = loginData["DATA"]["0"]["username"];
      if (nik != null) {
        return nik;
      }
    }
    return null;
  }

  static Future<String?> departemen() async {
    Map<String, dynamic>? loginData = await _getLoginData();
    if (loginData != null) {
      String? nik = loginData["DATA"]["0"]["departement"];
      if (nik != null) {
        return nik;
      }
    }
    return null;
  }
}
