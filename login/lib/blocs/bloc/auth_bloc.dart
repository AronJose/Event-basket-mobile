import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/auth.dart';
import 'package:login/services/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService = AuthService();

  AuthBloc() : super(AuthState.initial()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        final data = await authService.signUp({
          'first_name': event.firstName,
          'last_name': event.lastName,
          'email': event.email,
          'contact': event.contact,
          'role': event.role,
          'password': event.password,
        });
        emit(state.copyWith(data: data, loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(data: null, loading: false, error: e.toString()));
      }
    });
  }
}
