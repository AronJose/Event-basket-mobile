import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/models/category_modal.dart';
import 'package:login/core/models/event_modal.dart';
import 'package:login/core/models/listing_common_model.dart';
import 'package:login/core/models/multiple_image_upload_modal.dart';
import 'package:login/core/models/provider_modal.dart';
import 'package:login/core/models/providing_model.dart';
import 'package:login/core/models/services.dart';
import 'package:login/core/services/event_service.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  List<dynamic>? imageNames;

  final EventService eventService =
      EventService(Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL)));
  EventsBloc() : super(EventsState.initial()) {
    on<CategoryList>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getCategory();
        emit(state.copyWith(loading: false, categoryData: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    on<ServicesList>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getServices();
        emit(state.copyWith(loading: false, servicesData: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    on<ProviderList>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getProviders();
        emit(state.copyWith(loading: false, providerData: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    on<ProvidingList>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getProviding();
        emit(state.copyWith(loading: false, providingData: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    on<EventList>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getEvents();
        // print(data);
        emit(state.copyWith(loading: false, eventsData: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    on<CreateEventsEvent>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        await eventService.createEvent({
          'Event_name': event.Event_name,
          'place': event.place,
          'desc': event.desc,
          'email': event.email,
          'contact': event.contact,
          'address': event.address,
          'category': event.category,
          'services': event.services,
          'providers': event.providers,
          'providing': event.providing,
          'image': imageNames
        });
        emit(state.copyWith(loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    // multiple Image Upload
    on<MultipleImgUpload>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        imageNames = await eventService.multipleImageUpload(event.filepaths);
        // print(imageNames.toString());
        emit(state.copyWith(loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    // common API for service,category,provider,providing

    on<GetAllApiCommon>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await eventService.getAllAPI();
        emit(state.copyWith(loading: false, allApiValues: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });
  }
}
