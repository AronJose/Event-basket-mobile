part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool loading,
    required String? error,
    required ProfileModel? profileDetails,
  }) = _Initial;

  factory ProfileState.initial() =>
      const ProfileState(loading: false, error: null, profileDetails: null);
}
