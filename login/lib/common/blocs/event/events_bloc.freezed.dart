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
    required TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)
        createEventsEvent,
    required TResult Function(List<String?> filepaths) multipleImgUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
    TResult? Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult? Function(List<String?> filepaths)? multipleImgUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult Function(List<String?> filepaths)? multipleImgUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
    required TResult Function(CreateEventsEvent value) createEventsEvent,
    required TResult Function(MultipleImgUpload value) multipleImgUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
    TResult? Function(CreateEventsEvent value)? createEventsEvent,
    TResult? Function(MultipleImgUpload value)? multipleImgUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    TResult Function(CreateEventsEvent value)? createEventsEvent,
    TResult Function(MultipleImgUpload value)? multipleImgUpload,
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
    required TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)
        createEventsEvent,
    required TResult Function(List<String?> filepaths) multipleImgUpload,
  }) {
    return categoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
    TResult? Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult? Function(List<String?> filepaths)? multipleImgUpload,
  }) {
    return categoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult Function(List<String?> filepaths)? multipleImgUpload,
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
    required TResult Function(CreateEventsEvent value) createEventsEvent,
    required TResult Function(MultipleImgUpload value) multipleImgUpload,
  }) {
    return categoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
    TResult? Function(CreateEventsEvent value)? createEventsEvent,
    TResult? Function(MultipleImgUpload value)? multipleImgUpload,
  }) {
    return categoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    TResult Function(CreateEventsEvent value)? createEventsEvent,
    TResult Function(MultipleImgUpload value)? multipleImgUpload,
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
    required TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)
        createEventsEvent,
    required TResult Function(List<String?> filepaths) multipleImgUpload,
  }) {
    return servicesLIst();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
    TResult? Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult? Function(List<String?> filepaths)? multipleImgUpload,
  }) {
    return servicesLIst?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult Function(List<String?> filepaths)? multipleImgUpload,
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
    required TResult Function(CreateEventsEvent value) createEventsEvent,
    required TResult Function(MultipleImgUpload value) multipleImgUpload,
  }) {
    return servicesLIst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
    TResult? Function(CreateEventsEvent value)? createEventsEvent,
    TResult? Function(MultipleImgUpload value)? multipleImgUpload,
  }) {
    return servicesLIst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    TResult Function(CreateEventsEvent value)? createEventsEvent,
    TResult Function(MultipleImgUpload value)? multipleImgUpload,
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
abstract class _$$CreateEventsEventImplCopyWith<$Res> {
  factory _$$CreateEventsEventImplCopyWith(_$CreateEventsEventImpl value,
          $Res Function(_$CreateEventsEventImpl) then) =
      __$$CreateEventsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String Event_name,
      String place,
      String desc,
      String address,
      List<String> services,
      List<String> category});
}

/// @nodoc
class __$$CreateEventsEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$CreateEventsEventImpl>
    implements _$$CreateEventsEventImplCopyWith<$Res> {
  __$$CreateEventsEventImplCopyWithImpl(_$CreateEventsEventImpl _value,
      $Res Function(_$CreateEventsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Event_name = null,
    Object? place = null,
    Object? desc = null,
    Object? address = null,
    Object? services = null,
    Object? category = null,
  }) {
    return _then(_$CreateEventsEventImpl(
      Event_name: null == Event_name
          ? _value.Event_name
          : Event_name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreateEventsEventImpl
    with DiagnosticableTreeMixin
    implements CreateEventsEvent {
  const _$CreateEventsEventImpl(
      {required this.Event_name,
      required this.place,
      required this.desc,
      required this.address,
      required final List<String> services,
      required final List<String> category})
      : _services = services,
        _category = category;

  @override
  final String Event_name;
  @override
  final String place;
  @override
  final String desc;
  @override
  final String address;
  final List<String> _services;
  @override
  List<String> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<String> _category;
  @override
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsEvent.createEventsEvent(Event_name: $Event_name, place: $place, desc: $desc, address: $address, services: $services, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventsEvent.createEventsEvent'))
      ..add(DiagnosticsProperty('Event_name', Event_name))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('services', services))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventsEventImpl &&
            (identical(other.Event_name, Event_name) ||
                other.Event_name == Event_name) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      Event_name,
      place,
      desc,
      address,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventsEventImplCopyWith<_$CreateEventsEventImpl> get copyWith =>
      __$$CreateEventsEventImplCopyWithImpl<_$CreateEventsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryList,
    required TResult Function() servicesLIst,
    required TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)
        createEventsEvent,
    required TResult Function(List<String?> filepaths) multipleImgUpload,
  }) {
    return createEventsEvent(
        Event_name, place, desc, address, services, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
    TResult? Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult? Function(List<String?> filepaths)? multipleImgUpload,
  }) {
    return createEventsEvent?.call(
        Event_name, place, desc, address, services, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult Function(List<String?> filepaths)? multipleImgUpload,
    required TResult orElse(),
  }) {
    if (createEventsEvent != null) {
      return createEventsEvent(
          Event_name, place, desc, address, services, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
    required TResult Function(CreateEventsEvent value) createEventsEvent,
    required TResult Function(MultipleImgUpload value) multipleImgUpload,
  }) {
    return createEventsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
    TResult? Function(CreateEventsEvent value)? createEventsEvent,
    TResult? Function(MultipleImgUpload value)? multipleImgUpload,
  }) {
    return createEventsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    TResult Function(CreateEventsEvent value)? createEventsEvent,
    TResult Function(MultipleImgUpload value)? multipleImgUpload,
    required TResult orElse(),
  }) {
    if (createEventsEvent != null) {
      return createEventsEvent(this);
    }
    return orElse();
  }
}

abstract class CreateEventsEvent implements EventsEvent {
  const factory CreateEventsEvent(
      {required final String Event_name,
      required final String place,
      required final String desc,
      required final String address,
      required final List<String> services,
      required final List<String> category}) = _$CreateEventsEventImpl;

  String get Event_name;
  String get place;
  String get desc;
  String get address;
  List<String> get services;
  List<String> get category;
  @JsonKey(ignore: true)
  _$$CreateEventsEventImplCopyWith<_$CreateEventsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleImgUploadImplCopyWith<$Res> {
  factory _$$MultipleImgUploadImplCopyWith(_$MultipleImgUploadImpl value,
          $Res Function(_$MultipleImgUploadImpl) then) =
      __$$MultipleImgUploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String?> filepaths});
}

/// @nodoc
class __$$MultipleImgUploadImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$MultipleImgUploadImpl>
    implements _$$MultipleImgUploadImplCopyWith<$Res> {
  __$$MultipleImgUploadImplCopyWithImpl(_$MultipleImgUploadImpl _value,
      $Res Function(_$MultipleImgUploadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filepaths = null,
  }) {
    return _then(_$MultipleImgUploadImpl(
      filepaths: null == filepaths
          ? _value._filepaths
          : filepaths // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$MultipleImgUploadImpl
    with DiagnosticableTreeMixin
    implements MultipleImgUpload {
  const _$MultipleImgUploadImpl({required final List<String?> filepaths})
      : _filepaths = filepaths;

  final List<String?> _filepaths;
  @override
  List<String?> get filepaths {
    if (_filepaths is EqualUnmodifiableListView) return _filepaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filepaths);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsEvent.multipleImgUpload(filepaths: $filepaths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventsEvent.multipleImgUpload'))
      ..add(DiagnosticsProperty('filepaths', filepaths));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleImgUploadImpl &&
            const DeepCollectionEquality()
                .equals(other._filepaths, _filepaths));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filepaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleImgUploadImplCopyWith<_$MultipleImgUploadImpl> get copyWith =>
      __$$MultipleImgUploadImplCopyWithImpl<_$MultipleImgUploadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoryList,
    required TResult Function() servicesLIst,
    required TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)
        createEventsEvent,
    required TResult Function(List<String?> filepaths) multipleImgUpload,
  }) {
    return multipleImgUpload(filepaths);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoryList,
    TResult? Function()? servicesLIst,
    TResult? Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult? Function(List<String?> filepaths)? multipleImgUpload,
  }) {
    return multipleImgUpload?.call(filepaths);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoryList,
    TResult Function()? servicesLIst,
    TResult Function(String Event_name, String place, String desc,
            String address, List<String> services, List<String> category)?
        createEventsEvent,
    TResult Function(List<String?> filepaths)? multipleImgUpload,
    required TResult orElse(),
  }) {
    if (multipleImgUpload != null) {
      return multipleImgUpload(filepaths);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryList value) categoryList,
    required TResult Function(ServicesList value) servicesLIst,
    required TResult Function(CreateEventsEvent value) createEventsEvent,
    required TResult Function(MultipleImgUpload value) multipleImgUpload,
  }) {
    return multipleImgUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryList value)? categoryList,
    TResult? Function(ServicesList value)? servicesLIst,
    TResult? Function(CreateEventsEvent value)? createEventsEvent,
    TResult? Function(MultipleImgUpload value)? multipleImgUpload,
  }) {
    return multipleImgUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryList value)? categoryList,
    TResult Function(ServicesList value)? servicesLIst,
    TResult Function(CreateEventsEvent value)? createEventsEvent,
    TResult Function(MultipleImgUpload value)? multipleImgUpload,
    required TResult orElse(),
  }) {
    if (multipleImgUpload != null) {
      return multipleImgUpload(this);
    }
    return orElse();
  }
}

abstract class MultipleImgUpload implements EventsEvent {
  const factory MultipleImgUpload({required final List<String?> filepaths}) =
      _$MultipleImgUploadImpl;

  List<String?> get filepaths;
  @JsonKey(ignore: true)
  _$$MultipleImgUploadImplCopyWith<_$MultipleImgUploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<CaterogyModel> get categoryData => throw _privateConstructorUsedError;
  List<Services> get servicesData => throw _privateConstructorUsedError;
  List<MultipleImageUploadModal> get multipleImgData =>
      throw _privateConstructorUsedError;

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
      List<Services> servicesData,
      List<MultipleImageUploadModal> multipleImgData});
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
    Object? multipleImgData = null,
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
      multipleImgData: null == multipleImgData
          ? _value.multipleImgData
          : multipleImgData // ignore: cast_nullable_to_non_nullable
              as List<MultipleImageUploadModal>,
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
      List<Services> servicesData,
      List<MultipleImageUploadModal> multipleImgData});
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
    Object? multipleImgData = null,
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
      multipleImgData: null == multipleImgData
          ? _value._multipleImgData
          : multipleImgData // ignore: cast_nullable_to_non_nullable
              as List<MultipleImageUploadModal>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.loading,
      required this.error,
      required final List<CaterogyModel> categoryData,
      required final List<Services> servicesData,
      required final List<MultipleImageUploadModal> multipleImgData})
      : _categoryData = categoryData,
        _servicesData = servicesData,
        _multipleImgData = multipleImgData;

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

  final List<MultipleImageUploadModal> _multipleImgData;
  @override
  List<MultipleImageUploadModal> get multipleImgData {
    if (_multipleImgData is EqualUnmodifiableListView) return _multipleImgData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multipleImgData);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventsState(loading: $loading, error: $error, categoryData: $categoryData, servicesData: $servicesData, multipleImgData: $multipleImgData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventsState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('categoryData', categoryData))
      ..add(DiagnosticsProperty('servicesData', servicesData))
      ..add(DiagnosticsProperty('multipleImgData', multipleImgData));
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
                .equals(other._servicesData, _servicesData) &&
            const DeepCollectionEquality()
                .equals(other._multipleImgData, _multipleImgData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_categoryData),
      const DeepCollectionEquality().hash(_servicesData),
      const DeepCollectionEquality().hash(_multipleImgData));

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
          required final List<Services> servicesData,
          required final List<MultipleImageUploadModal> multipleImgData}) =
      _$InitialImpl;

  @override
  bool get loading;
  @override
  String? get error;
  @override
  List<CaterogyModel> get categoryData;
  @override
  List<Services> get servicesData;
  @override
  List<MultipleImageUploadModal> get multipleImgData;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
