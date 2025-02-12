import 'package:dio/dio.dart';
import 'package:login/core/models/favorite_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  final Dio dio;
  FavoriteService(this.dio);

  Future<FavoriteModel> addFavorite(Map<String, dynamic> body) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');
      final response = await dio.post(
        '/api/events/favorite',
        data: body,
        options: Options(
          headers: {
            "Authorization": token,
          },
        ),
      );
     return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
