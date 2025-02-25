// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? eventId, String? userId) addFavorites,
    required TResult Function() getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavorites value) addFavorites,
    required TResult Function(GetFavoritesList value) getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavoritesList value)? getFavoriteList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavoritesList value)? getFavoriteList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddFavoritesImplCopyWith<$Res> {
  factory _$$AddFavoritesImplCopyWith(
          _$AddFavoritesImpl value, $Res Function(_$AddFavoritesImpl) then) =
      __$$AddFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? eventId, String? userId});
}

/// @nodoc
class __$$AddFavoritesImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$AddFavoritesImpl>
    implements _$$AddFavoritesImplCopyWith<$Res> {
  __$$AddFavoritesImplCopyWithImpl(
      _$AddFavoritesImpl _value, $Res Function(_$AddFavoritesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$AddFavoritesImpl(
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddFavoritesImpl implements AddFavorites {
  const _$AddFavoritesImpl({required this.eventId, required this.userId});

  @override
  final String? eventId;
  @override
  final String? userId;

  @override
  String toString() {
    return 'FavoriteEvent.addFavorites(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoritesImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoritesImplCopyWith<_$AddFavoritesImpl> get copyWith =>
      __$$AddFavoritesImplCopyWithImpl<_$AddFavoritesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? eventId, String? userId) addFavorites,
    required TResult Function() getFavoriteList,
  }) {
    return addFavorites(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavoriteList,
  }) {
    return addFavorites?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavoriteList,
    required TResult orElse(),
  }) {
    if (addFavorites != null) {
      return addFavorites(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavorites value) addFavorites,
    required TResult Function(GetFavoritesList value) getFavoriteList,
  }) {
    return addFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavoritesList value)? getFavoriteList,
  }) {
    return addFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavoritesList value)? getFavoriteList,
    required TResult orElse(),
  }) {
    if (addFavorites != null) {
      return addFavorites(this);
    }
    return orElse();
  }
}

abstract class AddFavorites implements FavoriteEvent {
  const factory AddFavorites(
      {required final String? eventId,
      required final String? userId}) = _$AddFavoritesImpl;

  String? get eventId;
  String? get userId;
  @JsonKey(ignore: true)
  _$$AddFavoritesImplCopyWith<_$AddFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavoritesListImplCopyWith<$Res> {
  factory _$$GetFavoritesListImplCopyWith(_$GetFavoritesListImpl value,
          $Res Function(_$GetFavoritesListImpl) then) =
      __$$GetFavoritesListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesListImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$GetFavoritesListImpl>
    implements _$$GetFavoritesListImplCopyWith<$Res> {
  __$$GetFavoritesListImplCopyWithImpl(_$GetFavoritesListImpl _value,
      $Res Function(_$GetFavoritesListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoritesListImpl implements GetFavoritesList {
  const _$GetFavoritesListImpl();

  @override
  String toString() {
    return 'FavoriteEvent.getFavoriteList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? eventId, String? userId) addFavorites,
    required TResult Function() getFavoriteList,
  }) {
    return getFavoriteList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavoriteList,
  }) {
    return getFavoriteList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavoriteList,
    required TResult orElse(),
  }) {
    if (getFavoriteList != null) {
      return getFavoriteList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavorites value) addFavorites,
    required TResult Function(GetFavoritesList value) getFavoriteList,
  }) {
    return getFavoriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavoritesList value)? getFavoriteList,
  }) {
    return getFavoriteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavoritesList value)? getFavoriteList,
    required TResult orElse(),
  }) {
    if (getFavoriteList != null) {
      return getFavoriteList(this);
    }
    return orElse();
  }
}

abstract class GetFavoritesList implements FavoriteEvent {
  const factory GetFavoritesList() = _$GetFavoritesListImpl;
}

/// @nodoc
mixin _$FavoriteState {
  bool? get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  FavoriteModel? get favorites => throw _privateConstructorUsedError;
  List<FavoriteListModel>? get favoriteList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call(
      {bool? loading,
      String? error,
      FavoriteModel? favorites,
      List<FavoriteListModel>? favoriteList});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? favorites = freezed,
    Object? favoriteList = freezed,
  }) {
    return _then(_value.copyWith(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as FavoriteModel?,
      favoriteList: freezed == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteListModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? loading,
      String? error,
      FavoriteModel? favorites,
      List<FavoriteListModel>? favoriteList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? favorites = freezed,
    Object? favoriteList = freezed,
  }) {
    return _then(_$InitialImpl(
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as FavoriteModel?,
      favoriteList: freezed == favoriteList
          ? _value._favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteListModel>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.loading,
      required this.error,
      required this.favorites,
      required final List<FavoriteListModel>? favoriteList})
      : _favoriteList = favoriteList;

  @override
  final bool? loading;
  @override
  final String? error;
  @override
  final FavoriteModel? favorites;
  final List<FavoriteListModel>? _favoriteList;
  @override
  List<FavoriteListModel>? get favoriteList {
    final value = _favoriteList;
    if (value == null) return null;
    if (_favoriteList is EqualUnmodifiableListView) return _favoriteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteState(loading: $loading, error: $error, favorites: $favorites, favoriteList: $favoriteList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites) &&
            const DeepCollectionEquality()
                .equals(other._favoriteList, _favoriteList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, favorites,
      const DeepCollectionEquality().hash(_favoriteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements FavoriteState {
  const factory _Initial(
      {required final bool? loading,
      required final String? error,
      required final FavoriteModel? favorites,
      required final List<FavoriteListModel>? favoriteList}) = _$InitialImpl;

  @override
  bool? get loading;
  @override
  String? get error;
  @override
  FavoriteModel? get favorites;
  @override
  List<FavoriteListModel>? get favoriteList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
