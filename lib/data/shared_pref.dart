import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  var pref = SharedPreferences.getInstance();

  static Future<void> init() async {
    final pref = await SharedPreferences.getInstance();
  }

  static Future<void> setStringPref(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(key, value);
  }

  static Future<String?> getStringPref(String key) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getString(key);
  }

  static Future<void> setBoolPref(String key, bool value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(key, value);
  }

  static Future<bool?> getBoolPref(String key) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getBool(key);
  }

  static Future<void> setIntPref(String key, int value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setInt(key, value);
  }

  static Future<int?> getIntPref(String key) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getInt(key);
  }

  static Future<void> clearPref() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
