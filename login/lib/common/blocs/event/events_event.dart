part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.categoryList() = CategoryList;
  const factory EventsEvent.servicesLIst() = ServicesList;
  const factory EventsEvent.createEventsEvent({
    required String Event_name,
    required String place,
    required String desc,
    required String address,
    required List<String> services,
    required List<String> category,
  }) = CreateEventsEvent;
  const factory EventsEvent.multipleImgUpload({required List<String?> filepaths}) =
      MultipleImgUpload;
}
