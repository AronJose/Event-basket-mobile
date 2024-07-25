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
    required TResult Function() roleListGet,
    required TResult Function() roleByIdGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? roleListGet,
    TResult? Function()? roleByIdGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roleListGet,
    TResult Function()? roleByIdGet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleListGet value) roleListGet,
    required TResult Function(RoleByIdGet value) roleByIdGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleListGet value)? roleListGet,
    TResult? Function(RoleByIdGet value)? roleByIdGet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleListGet value)? roleListGet,
    TResult Function(RoleByIdGet value)? roleByIdGet,
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
abstract class _$$RoleListGetImplCopyWith<$Res> {
  factory _$$RoleListGetImplCopyWith(
          _$RoleListGetImpl value, $Res Function(_$RoleListGetImpl) then) =
      __$$RoleListGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoleListGetImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$RoleListGetImpl>
    implements _$$RoleListGetImplCopyWith<$Res> {
  __$$RoleListGetImplCopyWithImpl(
      _$RoleListGetImpl _value, $Res Function(_$RoleListGetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoleListGetImpl with DiagnosticableTreeMixin implements RoleListGet {
  const _$RoleListGetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoleEvent.roleListGet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoleEvent.roleListGet'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoleListGetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roleListGet,
    required TResult Function() roleByIdGet,
  }) {
    return roleListGet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? roleListGet,
    TResult? Function()? roleByIdGet,
  }) {
    return roleListGet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roleListGet,
    TResult Function()? roleByIdGet,
    required TResult orElse(),
  }) {
    if (roleListGet != null) {
      return roleListGet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleListGet value) roleListGet,
    required TResult Function(RoleByIdGet value) roleByIdGet,
  }) {
    return roleListGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleListGet value)? roleListGet,
    TResult? Function(RoleByIdGet value)? roleByIdGet,
  }) {
    return roleListGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleListGet value)? roleListGet,
    TResult Function(RoleByIdGet value)? roleByIdGet,
    required TResult orElse(),
  }) {
    if (roleListGet != null) {
      return roleListGet(this);
    }
    return orElse();
  }
}

abstract class RoleListGet implements RoleEvent {
  const factory RoleListGet() = _$RoleListGetImpl;
}

/// @nodoc
abstract class _$$RoleByIdGetImplCopyWith<$Res> {
  factory _$$RoleByIdGetImplCopyWith(
          _$RoleByIdGetImpl value, $Res Function(_$RoleByIdGetImpl) then) =
      __$$RoleByIdGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoleByIdGetImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$RoleByIdGetImpl>
    implements _$$RoleByIdGetImplCopyWith<$Res> {
  __$$RoleByIdGetImplCopyWithImpl(
      _$RoleByIdGetImpl _value, $Res Function(_$RoleByIdGetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoleByIdGetImpl with DiagnosticableTreeMixin implements RoleByIdGet {
  const _$RoleByIdGetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoleEvent.roleByIdGet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoleEvent.roleByIdGet'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoleByIdGetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() roleListGet,
    required TResult Function() roleByIdGet,
  }) {
    return roleByIdGet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? roleListGet,
    TResult? Function()? roleByIdGet,
  }) {
    return roleByIdGet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? roleListGet,
    TResult Function()? roleByIdGet,
    required TResult orElse(),
  }) {
    if (roleByIdGet != null) {
      return roleByIdGet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleListGet value) roleListGet,
    required TResult Function(RoleByIdGet value) roleByIdGet,
  }) {
    return roleByIdGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleListGet value)? roleListGet,
    TResult? Function(RoleByIdGet value)? roleByIdGet,
  }) {
    return roleByIdGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleListGet value)? roleListGet,
    TResult Function(RoleByIdGet value)? roleByIdGet,
    required TResult orElse(),
  }) {
    if (roleByIdGet != null) {
      return roleByIdGet(this);
    }
    return orElse();
  }
}

abstract class RoleByIdGet implements RoleEvent {
  const factory RoleByIdGet() = _$RoleByIdGetImpl;
}

/// @nodoc
mixin _$RoleState {
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
  @useResult
  $Res call({bool loading, String error});
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
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error!
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RoleStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? error, List<RolesModel> data});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? data = null,
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
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RolesModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.loading,
      required this.error,
      required final List<RolesModel> data})
      : _data = data;

  @override
  final bool loading;
  @override
  final String? error;
  final List<RolesModel> _data;
  @override
  List<RolesModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoleState(loading: $loading, error: $error, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoleState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, error, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements RoleState {
  const factory _Initial(
      {required final bool loading,
      required final String? error,
      required final List<RolesModel> data}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  String? get error;
  @override
  List<RolesModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleRoleImplCopyWith<$Res>
    implements $RoleStateCopyWith<$Res> {
  factory _$$SingleRoleImplCopyWith(
          _$SingleRoleImpl value, $Res Function(_$SingleRoleImpl) then) =
      __$$SingleRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error, RolesModel? data});
}

/// @nodoc
class __$$SingleRoleImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$SingleRoleImpl>
    implements _$$SingleRoleImplCopyWith<$Res> {
  __$$SingleRoleImplCopyWithImpl(
      _$SingleRoleImpl _value, $Res Function(_$SingleRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? data = freezed,
  }) {
    return _then(_$SingleRoleImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RolesModel?,
    ));
  }
}

/// @nodoc

class _$SingleRoleImpl with DiagnosticableTreeMixin implements _SingleRole {
  const _$SingleRoleImpl(
      {required this.loading, required this.error, required this.data});

  @override
  final bool loading;
  @override
  final String error;
  @override
  final RolesModel? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoleState(loading: $loading, error: $error, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoleState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRoleImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRoleImplCopyWith<_$SingleRoleImpl> get copyWith =>
      __$$SingleRoleImplCopyWithImpl<_$SingleRoleImpl>(this, _$identity);
}

abstract class _SingleRole implements RoleState {
  const factory _SingleRole(
      {required final bool loading,
      required final String error,
      required final RolesModel? data}) = _$SingleRoleImpl;

  @override
  bool get loading;
  @override
  String get error;
  @override
  RolesModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SingleRoleImplCopyWith<_$SingleRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
