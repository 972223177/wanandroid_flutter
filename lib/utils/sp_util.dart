import 'package:shared_preferences/shared_preferences.dart';
import 'package:synchronized/synchronized.dart';

class SpUtil {
  SpUtil._();

  static SharedPreferences? _preferences;

  static final Lock _lock = Lock();

  static final Future<bool> _defaultResult = Future.value(false);

  static Future<void> init() => _lock.synchronized(() async {
        _preferences ??= await SharedPreferences.getInstance();
      });

  static Future<bool> putInt(String key, int value) async =>
      _preferences?.setInt(key, value) ?? _defaultResult;

  static Future<bool> putBoolean(String key, bool value) async =>
      _preferences?.setBool(key, value) ?? _defaultResult;

  static Future<bool> putString(String key, String value) async =>
      _preferences?.setString(key, value) ?? _defaultResult;

  static Future<bool> putDouble(String key, double value) async =>
      _preferences?.setDouble(key, value) ?? _defaultResult;

  static Future<bool> putStringList(String key, List<String> value) async =>
      _preferences?.setStringList(key, value) ?? _defaultResult;

  static int getInt(String key, [int defaultValue = -1]) =>
      _preferences?.getInt(key) ?? defaultValue;

  static bool getBoolean(String key, [bool defaultValue = false]) =>
      _preferences?.getBool(key) ?? defaultValue;

  static String getString(String key, [String defaultValue = ""]) =>
      _preferences?.getString(key) ?? defaultValue;

  static double getDouble(String key, [double defaultValue = 0.0]) =>
      _preferences?.getDouble(key) ?? defaultValue;

  static List<String> getStringList(String key,
          [List<String> defaultValue = const []]) =>
      _preferences?.getStringList(key) ?? defaultValue;
}
