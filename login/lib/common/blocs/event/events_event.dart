part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.categoryList() = CategoryList;
  const factory EventsEvent.servicesLIst()= ServicesList;
}