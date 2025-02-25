part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    required bool? loading,
    required String? error,
    required FavoriteModel? favorites,
    required List<FavoriteListModel>? favoriteList,
  }) = _Initial;
  factory FavoriteState.initial() => const FavoriteState(
        loading: false,
        error: null,
        favorites: null,
        favoriteList: [],
      );
}
