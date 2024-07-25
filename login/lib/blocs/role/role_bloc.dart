import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/roles.dart';
import 'package:login/services/role_service.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final RoleService roleService = RoleService();
  RoleBloc() : super(RoleState.initial()) {
    on<RoleListGet>((event, emit) async {
      try {
        final data = await roleService.getRoles();
        print(data);
      } catch (e) {
        print(e);
      }
    });
  }
}
