part of 'role_bloc.dart';


@freezed
class RoleState with _$RoleState {
  const factory RoleState({
    required RolesModel? data,
    required bool loading,
    required String? error,
  }) = initial;

  factory RoleState.initial() => const RoleState(
        data: null,
        loading: false,
        error: null,
      );
}
