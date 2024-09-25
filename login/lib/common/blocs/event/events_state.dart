part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required bool loading,
    required String? error,
    required List<CaterogyModel> categoryData,
    required List<Services> servicesData,
    required List<Providermodel> providerData,
    required List<Providingmodel> providingData,
    required List<MultipleImageUploadModal> multipleImgData,
  }) = _Initial;
  factory EventsState.initial() => const EventsState(
        loading: false,
        error: null,
        categoryData: [],
        servicesData: [],
        providerData: [],
        providingData: [],
        multipleImgData: [],
      );
}
