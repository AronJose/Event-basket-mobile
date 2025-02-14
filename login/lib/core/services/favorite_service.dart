import 'package:dio/dio.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/models/favorite_list_model.dart';
import 'package:login/core/models/favorite_model.dart';
import 'package:login/shared_prefs_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteService {
  final Dio dio;
  FavoriteService(this.dio);

// -------------------------- Adding favorite to the favorite table ------------------------------
  Future<FavoriteModel> addFavorite(Map<String, dynamic> body) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');
    try {
      final response = await dio.post(
       ApiEnpoints.addFavorite,
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

  // --------------------------- Listing All Favorite based on the User ------------------------------

  Future<FavoriteListModel> getFavorites() async {
    try {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
       final String? token = prefs.getString('auth_token');
       final String? userId = prefs.getString('user_id');                                   
      final response = await dio.get(ApiEnpoints.getFavorite,
          queryParameters: {"user_id": userId},
          options: Options(
            headers: {
              "Authorization": token,
            },
          ));
      return FavoriteListModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
