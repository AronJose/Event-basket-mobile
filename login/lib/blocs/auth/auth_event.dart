part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUpEvent({
     required String firstName,
    required String lastName,
    required String email,
    required String contact,
    required String image,
    required String password,
  }) = SignUpEvent;

 const factory AuthEvent.uploadImageEvent(File filepath) = UploadImageEvent;
}