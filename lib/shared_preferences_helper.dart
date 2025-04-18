import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  // Ключи для данных пользователя
  static const String _keyFullName = 'fullName';
  static const String _keyEmail = 'email';
  static const String _keyPhone = 'phone';
  static const String _keyIsAuthenticated = 'isAuthenticated';

  // Сохранение данных пользователя
  static Future<void> saveUserData(String fullName, String email, String phone) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyFullName, fullName);
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyPhone, phone);
    await prefs.setBool(_keyIsAuthenticated, true);  // Сохраняем статус авторизации
  }

  // Получение данных пользователя
  static Future<Map<String, String>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    String fullName = prefs.getString(_keyFullName) ?? '';
    String email = prefs.getString(_keyEmail) ?? '';
    String phone = prefs.getString(_keyPhone) ?? '';

    return {
      'fullName': fullName,
      'email': email,
      'phone': phone,
    };
  }

  // Проверка статуса авторизации
  static Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsAuthenticated) ?? false;
  }

  // Сохранение статуса авторизации
  static Future<void> saveAuthStatus(bool isAuthenticated) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsAuthenticated, isAuthenticated);
  }

  // Очистка данных
  static Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyFullName);
    await prefs.remove(_keyEmail);
    await prefs.remove(_keyPhone);
    await prefs.remove(_keyIsAuthenticated);
  }
}


