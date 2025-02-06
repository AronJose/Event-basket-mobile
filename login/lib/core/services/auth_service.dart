// import 'dart:io';

import 'package:dio/dio.dart';
import 'package:login/shared_prefs_helper.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio);

// --------------------Sign Up -----------------------------------

  Future<void> signUp(Map<String, dynamic> body) async {
    MultipartFile? img;
    try {
      if (body["image"] != null && body['image'] != '') {
        img = await MultipartFile.fromFile(body["image"]);
      }
      FormData formData = FormData.fromMap({
        "first_name": body["first_name"],
        "last_name": body["last_name"],
        "email": body["email"],
        "contact": body["contact"],
        "password": body["password"],
        if (img != null) "image": img,
      });
      await dio.post("/api/users/signup", data: formData);
    } catch (e) {
      rethrow;
    }
  }

  // -------------------- Sign In -----------------------------------

  Future<void> signIn(Map<String, dynamic> body) async {
    try {
      final response = await dio.post("/api/users/login", data: body);
      if (response.data['message'] == "success") {
        final token = response.data['userDetails']['token'];
        final userId = response.data['userDetails']['_id'];
        await SharedPrefsHelper.saveToken(token);
        await SharedPrefsHelper.saveUserId(userId);
      }
    } catch (e) {
      rethrow;
    }
  }

// -------------------- Upload Profile Image Upload API ----------------

  // Future<void> uploadProfileImage(File filepath) async {
  //   try {
  //     FormData formData = FormData.fromMap({
  //       'file': await MultipartFile.fromFile(filepath.path,
  //           filename: filepath.path.split('/').last),
  //     });
  //     await dio.post('/api/users/profileImage', data: formData);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

// ---------------- LogOut API Call session table token Removed ----------

  Future<void> signOut(Map<String, dynamic> body) async {
    try {
      final String? token = await SharedPrefsHelper.getToken();
      await dio.post(
        "/api/users/logout",
        data: body,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
