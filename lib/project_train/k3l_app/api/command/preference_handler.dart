import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  // STORING KEYS
  static const String _dataLogin = '_dataLogin';

//storing
  static Future<void> storingDataLogin(Map<String, dynamic> dataLogin) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    // Map<String, dynamic> mapUser = dataLogin.toJson();
    String stringUser = jsonEncode(dataLogin);
    preferences.setString(_dataLogin, stringUser);
  }

//retrieve
  static Future<String?> retrieveDataLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? result = preferences.getString(_dataLogin);
    return result;
  }

//remove

  static Future<bool> removeDataLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(_dataLogin);
    return true;
  }
}
