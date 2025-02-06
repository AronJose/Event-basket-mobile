import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static const String _authTokenKey = 'auth_token';
  static const String _userIdKey = 'user_id';

  //------------ Save authentication token --------------
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authTokenKey, token);
  }

  ///--------- Get authentication token ------------------
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_authTokenKey);
  }

  ///-------- Remove authentication token (Logout)---------
  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authTokenKey);
  }

  //--------  Save Login User-Id -------------------------
  static Future<void> saveUserId(String userId) async {
    final loginUserId = await SharedPreferences.getInstance();
    await loginUserId.setString(_userIdKey, userId);
  }

  // --------Get Login User Id -----------------------------
  static Future<String?>getUserId()async{
    final loginUserId = await SharedPreferences.getInstance();
    return loginUserId.getString(_userIdKey);
  }
}
