import 'package:shared_preferences/shared_preferences.dart';

class sharedPref {
  var pref = SharedPreferences.getInstance();

  Future<void> setStringPref(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(key, value);
  }

  Future<String?> getStringPref(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getString(key);
  }

  Future<void> setBoolPref(String key, bool value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(key, value);
  }

  Future<bool?> getBoolPref(String key, bool value) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getBool(key);
  }

  Future<void> setIntPref(String key, int value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setInt(key, value);
  }

  Future<int?> getIntPref(String key, int value) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.getInt(key);
  }

  Future<void> clearPref() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
