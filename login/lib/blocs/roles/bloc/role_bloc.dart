

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/roles.dart';
import 'package:login/services/auth.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final AuthService authService = AuthService();

  RoleBloc() : super(RoleState.initial()) {
    on<RoleEvent>((event, emit) async {
      try {
        final data = await authService.getRoles();
        emit(state.copyWith(data: data, loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(data: null, loading: false, error: e.toString()));
      }
    });
  }
}
