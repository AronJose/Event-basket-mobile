part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required bool loading,
    required String? error,
    required List<CaterogyModel> categoryData,
    required List<Services> servicesData,
  }) = _Initial;
  factory EventsState.initial() =>
      const EventsState(loading: true, error: null, categoryData: [], servicesData: [],);
}
