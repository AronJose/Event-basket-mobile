import 'package:dio/dio.dart';
import 'package:login/core/models/profile_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  final Dio dio;
  ProfileService(this.dio);

// ------------------- Profile Get API --------------------------------

  Future<ProfileModel> getProfile() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');
      final res = await dio.get(
        "/api/users/profile",
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      final data = res.data;
      return ProfileModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
