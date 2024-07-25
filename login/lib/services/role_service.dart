import 'package:dio/dio.dart';
import 'package:login/constants/api_enpoints.dart';
import 'package:login/models/roles.dart';

class RoleService {
  Dio dio = Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL));

  Future<List<RolesModel>> getRoles() async {
    try {
      final res = await dio.get("/api/roles/");
      final data = res.data;
      final List<RolesModel> rolesList = [];
      for (var role in data) {
        rolesList.add(RolesModel.fromJson(role));
      }
      return rolesList;
    } catch (e) {
      rethrow;
    }
  }

  Future<RolesModel> getRoleById(String id) async {
    try {
      final res =
          await dio.get("/api/roles/:id", queryParameters: {"role_id": id});
      final data = res.data;
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
