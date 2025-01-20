part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool loading,
    required String? error,
  }) = _Initial;
  factory AuthState.initial() => const AuthState(
        loading: true,
        error: null,
      );
}
