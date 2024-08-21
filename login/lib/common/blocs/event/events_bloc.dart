import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/models/category_modal.dart';
import 'package:login/core/models/services.dart';
import 'package:login/core/services/event_service.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
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
  }
}
