part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.addFavorites({
    required String? eventId,
    required String? userId,
  }) = AddFavorites;

  const factory FavoriteEvent.getFavoriteList() = GetFavoritesList;
}
