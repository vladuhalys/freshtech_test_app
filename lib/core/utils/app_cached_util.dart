import 'package:encrypt_shared_preferences/provider.dart';

class AppCachedUtil {
  final EncryptedSharedPreferences _preferences;
  AppCachedUtil({required EncryptedSharedPreferences preferences}) : _preferences = preferences;

  Future<void> writeString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  Future<String?> readString(String key) async {
    return _preferences.getString(key);
  }

}