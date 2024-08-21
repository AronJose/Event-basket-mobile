import 'package:dio/dio.dart';
import 'package:login/core/models/category_modal.dart';
import 'package:login/core/models/services.dart';

class EventService {
  final Dio dio;
  EventService(this.dio);

  Future<List<CaterogyModel>> getCategory() async {
    try {
      final res = await dio.get("/api/events/category");
      final data = res.data;
      final List<CaterogyModel> categoryList = [];
      for (var category in data) {
        categoryList.add(CaterogyModel.fromJson(category));
      }
      return categoryList;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Services>> getServices() async {
    try {
      final res = await dio.get("/api/events/service");
      final data = res.data;
      final List<Services> serviceList = [];
      for (var service in data) {
        serviceList.add(Services.fromJson(service));
      }
      return serviceList;
    } catch (e) {
      rethrow;
    }
  }
}
