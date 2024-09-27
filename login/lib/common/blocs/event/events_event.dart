part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.categoryList() = CategoryList;
  const factory EventsEvent.servicesLIst() = ServicesList;
  const factory EventsEvent.providerList() = ProviderList;
  const factory EventsEvent.providingList() = ProvidingList;
  const factory EventsEvent.eventList() = EventList;
  const factory EventsEvent.createEventsEvent({
    required String Event_name,
    required String place,
    required String desc,
    required String address,
    required String email,
    required String contact,
    required List<String> services,
    required List<String> category,
    required List<String> providers,
    required List<String> providing,
  }) = CreateEventsEvent;
  const factory EventsEvent.multipleImgUpload(
      {required List<String?> filepaths}) = MultipleImgUpload;
}
