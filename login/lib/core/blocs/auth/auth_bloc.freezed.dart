// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)
        signUpEvent,
    required TResult Function(File filepath) uploadImageEvent,
    required TResult Function(String email, String password) signInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult? Function(File filepath)? uploadImageEvent,
    TResult? Function(String email, String password)? signInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult Function(File filepath)? uploadImageEvent,
    TResult Function(String email, String password)? signInEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(SignInEvent value) signInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(SignInEvent value)? signInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(SignInEvent value)? signInEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String contact,
      String image,
      String password});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? contact = null,
    Object? image = null,
    Object? password = null,
  }) {
    return _then(_$SignUpEventImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl with DiagnosticableTreeMixin implements SignUpEvent {
  const _$SignUpEventImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.contact,
      required this.image,
      required this.password});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String contact;
  @override
  final String image;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signUpEvent(firstName: $firstName, lastName: $lastName, email: $email, contact: $contact, image: $image, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signUpEvent'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, email, contact, image, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)
        signUpEvent,
    required TResult Function(File filepath) uploadImageEvent,
    required TResult Function(String email, String password) signInEvent,
  }) {
    return signUpEvent(firstName, lastName, email, contact, image, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult? Function(File filepath)? uploadImageEvent,
    TResult? Function(String email, String password)? signInEvent,
  }) {
    return signUpEvent?.call(
        firstName, lastName, email, contact, image, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult Function(File filepath)? uploadImageEvent,
    TResult Function(String email, String password)? signInEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(firstName, lastName, email, contact, image, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(SignInEvent value) signInEvent,
  }) {
    return signUpEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(SignInEvent value)? signInEvent,
  }) {
    return signUpEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(SignInEvent value)? signInEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String contact,
      required final String image,
      required final String password}) = _$SignUpEventImpl;

  String get firstName;
  String get lastName;
  String get email;
  String get contact;
  String get image;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageEventImplCopyWith<$Res> {
  factory _$$UploadImageEventImplCopyWith(_$UploadImageEventImpl value,
          $Res Function(_$UploadImageEventImpl) then) =
      __$$UploadImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File filepath});
}

/// @nodoc
class __$$UploadImageEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UploadImageEventImpl>
    implements _$$UploadImageEventImplCopyWith<$Res> {
  __$$UploadImageEventImplCopyWithImpl(_$UploadImageEventImpl _value,
      $Res Function(_$UploadImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepath = null,
  }) {
    return _then(_$UploadImageEventImpl(
      null == filepath
          ? _value.filepath
          : filepath // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadImageEventImpl
    with DiagnosticableTreeMixin
    implements UploadImageEvent {
  const _$UploadImageEventImpl(this.filepath);

  @override
  final File filepath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.uploadImageEvent(filepath: $filepath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.uploadImageEvent'))
      ..add(DiagnosticsProperty('filepath', filepath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageEventImpl &&
            (identical(other.filepath, filepath) ||
                other.filepath == filepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filepath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      __$$UploadImageEventImplCopyWithImpl<_$UploadImageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)
        signUpEvent,
    required TResult Function(File filepath) uploadImageEvent,
    required TResult Function(String email, String password) signInEvent,
  }) {
    return uploadImageEvent(filepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult? Function(File filepath)? uploadImageEvent,
    TResult? Function(String email, String password)? signInEvent,
  }) {
    return uploadImageEvent?.call(filepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult Function(File filepath)? uploadImageEvent,
    TResult Function(String email, String password)? signInEvent,
    required TResult orElse(),
  }) {
    if (uploadImageEvent != null) {
      return uploadImageEvent(filepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(SignInEvent value) signInEvent,
  }) {
    return uploadImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(SignInEvent value)? signInEvent,
  }) {
    return uploadImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(SignInEvent value)? signInEvent,
    required TResult orElse(),
  }) {
    if (uploadImageEvent != null) {
      return uploadImageEvent(this);
    }
    return orElse();
  }
}

abstract class UploadImageEvent implements AuthEvent {
  const factory UploadImageEvent(final File filepath) = _$UploadImageEventImpl;

  File get filepath;
  @JsonKey(ignore: true)
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl with DiagnosticableTreeMixin implements SignInEvent {
  const _$SignInEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInEvent(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInEvent'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)
        signUpEvent,
    required TResult Function(File filepath) uploadImageEvent,
    required TResult Function(String email, String password) signInEvent,
  }) {
    return signInEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult? Function(File filepath)? uploadImageEvent,
    TResult? Function(String email, String password)? signInEvent,
  }) {
    return signInEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String email,
            String contact, String image, String password)?
        signUpEvent,
    TResult Function(File filepath)? uploadImageEvent,
    TResult Function(String email, String password)? signInEvent,
    required TResult orElse(),
  }) {
    if (signInEvent != null) {
      return signInEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(UploadImageEvent value) uploadImageEvent,
    required TResult Function(SignInEvent value) signInEvent,
  }) {
    return signInEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(UploadImageEvent value)? uploadImageEvent,
    TResult? Function(SignInEvent value)? signInEvent,
  }) {
    return signInEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(UploadImageEvent value)? uploadImageEvent,
    TResult Function(SignInEvent value)? signInEvent,
    required TResult orElse(),
  }) {
    if (signInEvent != null) {
      return signInEvent(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements AuthEvent {
  const factory SignInEvent(
      {required final String email,
      required final String password}) = _$SignInEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool loading, String? error, String? token});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? error, String? token});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? token = freezed,
  }) {
    return _then(_$InitialImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.loading, required this.error, required this.token});

  @override
  final bool loading;
  @override
  final String? error;
  @override
  final String? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(loading: $loading, error: $error, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool loading,
      required final String? error,
      required final String? token}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  String? get error;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
