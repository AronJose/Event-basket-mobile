// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryList,
    required TResult Function() servicesLIst,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryListImplCopyWith<$Res> {
  factory _$$CategoryListImplCopyWith(
          _$CategoryListImpl value, $Res Function(_$CategoryListImpl) then) =
      __$$CategoryListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryListImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$CategoryListImpl>
    implements _$$CategoryListImplCopyWith<$Res> {
  __$$CategoryListImplCopyWithImpl(
      _$CategoryListImpl _value, $Res Function(_$CategoryListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryListImpl with DiagnosticableTreeMixin implements CategoryList {
  const _$CategoryListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsEvent.categoryList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EventsEvent.categoryList'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryList,
    required TResult Function() servicesLIst,
  }) {
    return categoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
  }) {
    return categoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    required TResult orElse(),
  }) {
    if (categoryList != null) {
      return categoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
  }) {
    return categoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
  }) {
    return categoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    required TResult orElse(),
  }) {
    if (categoryList != null) {
      return categoryList(this);
    }
    return orElse();
  }
}

abstract class CategoryList implements EventsEvent {
  const factory CategoryList() = _$CategoryListImpl;
}

/// @nodoc
abstract class _$$ServicesListImplCopyWith<$Res> {
  factory _$$ServicesListImplCopyWith(
          _$ServicesListImpl value, $Res Function(_$ServicesListImpl) then) =
      __$$ServicesListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServicesListImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$ServicesListImpl>
    implements _$$ServicesListImplCopyWith<$Res> {
  __$$ServicesListImplCopyWithImpl(
      _$ServicesListImpl _value, $Res Function(_$ServicesListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServicesListImpl with DiagnosticableTreeMixin implements ServicesList {
  const _$ServicesListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsEvent.servicesLIst()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EventsEvent.servicesLIst'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServicesListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryList,
    required TResult Function() servicesLIst,
  }) {
    return servicesLIst();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
  }) {
    return servicesLIst?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    required TResult orElse(),
  }) {
    if (servicesLIst != null) {
      return servicesLIst();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
  }) {
    return servicesLIst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
  }) {
    return servicesLIst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    required TResult orElse(),
  }) {
    if (servicesLIst != null) {
      return servicesLIst(this);
    }
    return orElse();
  }
}

abstract class ServicesList implements EventsEvent {
  const factory ServicesList() = _$ServicesListImpl;
}

/// @nodoc
mixin _$EventsState {
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<CaterogyModel> get categoryData => throw _privateConstructorUsedError;
  List<Services> get servicesData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {bool loading,
      String? error,
      List<CaterogyModel> categoryData,
      List<Services> servicesData});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? categoryData = null,
    Object? servicesData = null,
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
      categoryData: null == categoryData
          ? _value.categoryData
          : categoryData // ignore: cast_nullable_to_non_nullable
              as List<CaterogyModel>,
      servicesData: null == servicesData
          ? _value.servicesData
          : servicesData // ignore: cast_nullable_to_non_nullable
              as List<Services>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String? error,
      List<CaterogyModel> categoryData,
      List<Services> servicesData});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? categoryData = null,
    Object? servicesData = null,
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
      categoryData: null == categoryData
          ? _value._categoryData
          : categoryData // ignore: cast_nullable_to_non_nullable
              as List<CaterogyModel>,
      servicesData: null == servicesData
          ? _value._servicesData
          : servicesData // ignore: cast_nullable_to_non_nullable
              as List<Services>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.loading,
      required this.error,
      required final List<CaterogyModel> categoryData,
      required final List<Services> servicesData})
      : _categoryData = categoryData,
        _servicesData = servicesData;

  @override
  final bool loading;
  @override
  final String? error;
  final List<CaterogyModel> _categoryData;
  @override
  List<CaterogyModel> get categoryData {
    if (_categoryData is EqualUnmodifiableListView) return _categoryData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryData);
  }

  final List<Services> _servicesData;
  @override
  List<Services> get servicesData {
    if (_servicesData is EqualUnmodifiableListView) return _servicesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicesData);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsState(loading: $loading, error: $error, categoryData: $categoryData, servicesData: $servicesData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventsState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('categoryData', categoryData))
      ..add(DiagnosticsProperty('servicesData', servicesData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._categoryData, _categoryData) &&
            const DeepCollectionEquality()
                .equals(other._servicesData, _servicesData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_categoryData),
      const DeepCollectionEquality().hash(_servicesData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EventsState {
  const factory _Initial(
      {required final bool loading,
      required final String? error,
      required final List<CaterogyModel> categoryData,
      required final List<Services> servicesData}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  String? get error;
  @override
  List<CaterogyModel> get categoryData;
  @override
  List<Services> get servicesData;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
