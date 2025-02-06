import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/common/constants/api_enpoints.dart';
import 'package:login/core/services/auth_service.dart';
import 'package:login/shared_prefs_helper.dart';

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

    on<SignInEvent>(
      (event, emit) async {
        emit(state.copyWith(loading: false, error: null));
        try {
          await authService.signIn({
            'email': event.email,
            'password': event.password,
          });
          emit(state.copyWith(loading: false, error: null));
        } catch (e) {
          emit(state.copyWith(loading: false, error: e.toString()));
        }
      },
    );

    //  on<UploadImageEvent>((event, emit) async {
    //     emit(state.copyWith(loading: true, error: null));
    //     try {
    //       await authService.uploadProfileImage(event.filepath);
    //       emit(state.copyWith(loading: false, error: null));
    //     } catch (e) {
    //       emit(state.copyWith(loading: false, error: e.toString()));
    //     }
    //   });

    
    on<SignOutEvent>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      try {
        final String? userId = await SharedPrefsHelper.getUserId();
        if (userId != null) {
          await authService.signOut({"user_id": userId}); // Pass userId
          await SharedPrefsHelper.clearToken();
          // await SharedPrefsHelper.clearUserId(); //Not needed here - called after successful signout
          emit(state.copyWith(
              loading: false,
              error: null,
              )); 
        } else {
          emit(state.copyWith(loading: false, error: "User ID not found"));
        }
      } catch (e) {
        emit(state.copyWith(loading: false, error: e.toString()));
      }
    });
  }
}
