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

// Event Creation
  Future<void> createEvent(Map<String, dynamic> body) async {
    try {
      await dio.post(
        "/api/events/addEvent",
        data: body,
      );
    } catch (e) {
      rethrow;
    }
  }

//Multiple Image Upload
  Future<void> multipleImageUpload(List<String?> filepaths) async {
    try {
      FormData formData = FormData();

      for (int i = 0; i < filepaths.length; i++) {
        if (filepaths[i] != null) {
          formData.files.addAll([
            MapEntry(
              'images',
              await MultipartFile.fromFile(
                filepaths[i]!,
                filename: filepaths[i]?.split('/').last,
              ),
            )
          ]);
        }
      }

      await dio.post('/api/events/imgM', data: formData);
    } catch (e) {
      rethrow;
    }
  }
}
