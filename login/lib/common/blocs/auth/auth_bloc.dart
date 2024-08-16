import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService =
      AuthService(Dio(BaseOptions(baseUrl: ApiEnpoints.baseURL)));

  AuthBloc() : super(AuthState.initial()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(loading: false, error: null));
      try {
        await authService.signUp({
          'first_name': event.firstName,
          'last_name': event.lastName,
          'email': event.email,
          'contact': event.contact,
          'image': event.image,
          'password': event.password,
        });
        emit(state.copyWith(loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });

   on<UploadImageEvent>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        await authService.uploadProfileImage(event.filepath);
        emit(state.copyWith(loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });
  }
}


