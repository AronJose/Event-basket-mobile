import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:login/core/models/category_modal.dart';
import 'package:login/core/models/event_modal.dart';
import 'package:login/core/models/provider_modal.dart';
import 'package:login/core/models/providing_model.dart';
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

  Future<List<Providermodel>> getProviders() async {
    try {
      final res = await dio.get("/api/events/provider");
      final data = res.data;
      final List<Providermodel> providerList = [];
      for (var provider in data) {
        providerList.add(Providermodel.fromJson(provider));
      }
      return providerList;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Providingmodel>> getProviding() async {
    try {
      final res = await dio.get("/api/events/providing");
      final data = res.data;
      final List<Providingmodel> providingList = [];
      for (var providing in data) {
        providingList.add(Providingmodel.fromJson(providing));
      }
      return providingList;
    } catch (e) {
      rethrow;
    }
  }

// Event Creation
  Future<void> createEvent(Map<String, dynamic> body) async {
    print(body);
    try {
      await dio.post(
        "/api/events/addEvent",
        data: body,
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }

// Event Listing
  Future<List<EventModal>> getEvents() async {
    try {
      final res = await dio.get("/api/events/getevents");
      
      final data = res.data;
      final List<EventModal> eventList = [];
      for (var events in data) {
        print(events);
        eventList.add(EventModal.fromJson(events));
      }
      print(eventList);
      return eventList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

//Multiple Image Upload
  Future<List<dynamic>?> multipleImageUpload(List<String?> filepaths) async {
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

      final res = await dio.post('/api/events/imgM', data: formData);
      final imageNames = res.data['filepaths'];
      print(imageNames);
      return imageNames;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
