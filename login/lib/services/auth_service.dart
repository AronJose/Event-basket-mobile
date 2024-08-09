import 'dart:io';

import 'package:dio/dio.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio);

  Future<void> signUp(Map<String, dynamic> body) async {
    MultipartFile? img;
    try {
      if (body["image"] != null && body['image'] != '') {
        img = await MultipartFile.fromFile(body["image"]);
      }
      FormData formData = FormData.fromMap({
        "first_name": body["firstName"],
        "last_name": body["lastName"],
        "email": body["email"],
        "contact": body["contact"],
        "password": body["password"],
        "image": img,
      });

      await dio.post("/api/users/signup", data: formData);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> uploadProfileImage(File filepath) async {
    try {
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filepath.path,
            filename: filepath.path.split('/').last),
      });
      await dio.post('/api/users/profileImage', data: formData);
    } catch (e) {
      rethrow;
    }
  }
}
