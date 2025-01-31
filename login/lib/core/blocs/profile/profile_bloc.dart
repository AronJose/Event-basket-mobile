import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/models/profile_modal.dart';
import 'package:login/core/services/profile_service.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileService profileService =
      ProfileService(Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL)));
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      try {
        emit(state.copyWith(loading: true, error: null));
        final data = await profileService.getProfile();
        emit(state.copyWith(loading: false, profileDetails: data));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });
  }
}
