part of 'role_bloc.dart';

@freezed
class RoleEvent with _$RoleEvent {
   const factory RoleEvent.roleListGet()= RoleListGet;
   const factory RoleEvent.roleByIdGet()=RoleByIdGet;
}