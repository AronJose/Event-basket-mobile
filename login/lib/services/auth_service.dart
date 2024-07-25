import 'package:dio/dio.dart';
import 'package:login/constants/api_enpoints.dart';

class AuthService {
  Dio dio = Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL));

  Future<void> signUp(Map<String, dynamic> body) async {
    try {
      await dio.post("/api/users/signup", data: body);
    } catch (e) {
      rethrow;
    }
  }
}
