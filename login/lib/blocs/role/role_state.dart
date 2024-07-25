part of 'role_bloc.dart';

@freezed
class RoleState with _$RoleState {
  const factory RoleState({
    required bool loading,
    required String? error,
    required List<RolesModel> data,
  }) = _Initial;

  factory RoleState.initial() =>
   const  RoleState(loading: true, error: null, data: []);
}
