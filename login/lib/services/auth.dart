import 'package:dio/dio.dart';
import 'package:login/constants/api_enpoints.dart';
import 'package:login/models/auth.dart';
import 'package:login/models/roles.dart';

class AuthService {
  Dio dio = Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL));

  Future<AuthModel?> signUp(Map<String, dynamic> body) async {
    try {
      final res = await dio.post("/api/users/signup", data: body);
      final AuthModel auth = AuthModel.fromJson(res.data);
      return auth;
    } catch (e) {
      return null;
    }
  }

  Future<RolesModel?> getRoles() async {
    try {
      final res = await dio.get("api/roles/");
      final RolesModel roles = RolesModel.fromJson(res.data);
      return roles;
    } catch (e) {
      return null;
    }
  }

  
}
