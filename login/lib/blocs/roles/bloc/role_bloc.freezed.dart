// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRolesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRolesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRolesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRolesEvent value) getRolesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRolesEvent value)? getRolesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRolesEvent value)? getRolesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleEventCopyWith<$Res> {
  factory $RoleEventCopyWith(RoleEvent value, $Res Function(RoleEvent) then) =
      _$RoleEventCopyWithImpl<$Res, RoleEvent>;
}

/// @nodoc
class _$RoleEventCopyWithImpl<$Res, $Val extends RoleEvent>
    implements $RoleEventCopyWith<$Res> {
  _$RoleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRolesEventImplCopyWith<$Res> {
  factory _$$GetRolesEventImplCopyWith(
          _$GetRolesEventImpl value, $Res Function(_$GetRolesEventImpl) then) =
      __$$GetRolesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRolesEventImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$GetRolesEventImpl>
    implements _$$GetRolesEventImplCopyWith<$Res> {
  __$$GetRolesEventImplCopyWithImpl(
      _$GetRolesEventImpl _value, $Res Function(_$GetRolesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRolesEventImpl implements GetRolesEvent {
  const _$GetRolesEventImpl();

  @override
  String toString() {
    return 'RoleEvent.getRolesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRolesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRolesEvent,
  }) {
    return getRolesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRolesEvent,
  }) {
    return getRolesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRolesEvent,
    required TResult orElse(),
  }) {
    if (getRolesEvent != null) {
      return getRolesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRolesEvent value) getRolesEvent,
  }) {
    return getRolesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRolesEvent value)? getRolesEvent,
  }) {
    return getRolesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRolesEvent value)? getRolesEvent,
    required TResult orElse(),
  }) {
    if (getRolesEvent != null) {
      return getRolesEvent(this);
    }
    return orElse();
  }
}

abstract class GetRolesEvent implements RoleEvent {
  const factory GetRolesEvent() = _$GetRolesEventImpl;
}

/// @nodoc
mixin _$RoleState {
  RolesModel? get data => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
  @useResult
  $Res call({RolesModel? data, bool loading, String? error});
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res, $Val extends RoleState>
    implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RolesModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res>
    implements $RoleStateCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RolesModel? data, bool loading, String? error});
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$initialImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RolesModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$initialImpl implements initial {
  const _$initialImpl(
      {required this.data, required this.loading, required this.error});

  @override
  final RolesModel? data;
  @override
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'RoleState(data: $data, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      __$$initialImplCopyWithImpl<_$initialImpl>(this, _$identity);
}

abstract class initial implements RoleState {
  const factory initial(
      {required final RolesModel? data,
      required final bool loading,
      required final String? error}) = _$initialImpl;

  @override
  RolesModel? get data;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
