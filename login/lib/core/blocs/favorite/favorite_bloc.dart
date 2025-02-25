import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/models/favorite_list_model.dart';
import 'package:login/core/models/favorite_model.dart';
import 'package:login/core/services/favorite_service.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteService favoriteService =
      FavoriteService(Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL)));
  FavoriteBloc() : super(FavoriteState.initial()) {
    // ------------------ Favorite Adding ------------------------------
    on<AddFavorites>((event, emit) async {
      emit(state.copyWith(
        loading: true,
        error: null,
      ));
      try {
        await favoriteService.addFavorite({
          "user_id": event.userId,
          "event_id": event.eventId,
        });
        emit(state.copyWith(loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

    // ------------------ Favorite Listing ------------------------------
    on<GetFavoritesList>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        final data = await favoriteService.getFavorites();
        emit(state.copyWith(
          loading: false,
          error: null,
          favoriteList: data,
        ));
      } catch (e) {
        emit(state.copyWith(
          loading: false,
          error: "An unexpected error occurred: ${e.toString()}",
        ));
      }
    });
  }
}
