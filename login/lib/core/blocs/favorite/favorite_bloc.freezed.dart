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
    required TResult Function() getFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavorites value) addFavorites,
    required TResult Function(GetFavorites value) getFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavorites value)? getFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavorites value)? getFavorites,
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
    required TResult Function() getFavorites,
  }) {
    return addFavorites(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavorites,
  }) {
    return addFavorites?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavorites,
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
    required TResult Function(GetFavorites value) getFavorites,
  }) {
    return addFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavorites value)? getFavorites,
  }) {
    return addFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavorites value)? getFavorites,
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
abstract class _$$GetFavoritesImplCopyWith<$Res> {
  factory _$$GetFavoritesImplCopyWith(
          _$GetFavoritesImpl value, $Res Function(_$GetFavoritesImpl) then) =
      __$$GetFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$GetFavoritesImpl>
    implements _$$GetFavoritesImplCopyWith<$Res> {
  __$$GetFavoritesImplCopyWithImpl(
      _$GetFavoritesImpl _value, $Res Function(_$GetFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoritesImpl implements GetFavorites {
  const _$GetFavoritesImpl();

  @override
  String toString() {
    return 'FavoriteEvent.getFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? eventId, String? userId) addFavorites,
    required TResult Function() getFavorites,
  }) {
    return getFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? eventId, String? userId)? addFavorites,
    TResult? Function()? getFavorites,
  }) {
    return getFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? eventId, String? userId)? addFavorites,
    TResult Function()? getFavorites,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavorites value) addFavorites,
    required TResult Function(GetFavorites value) getFavorites,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavorites value)? addFavorites,
    TResult? Function(GetFavorites value)? getFavorites,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavorites value)? addFavorites,
    TResult Function(GetFavorites value)? getFavorites,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class GetFavorites implements FavoriteEvent {
  const factory GetFavorites() = _$GetFavoritesImpl;
}

/// @nodoc
mixin _$FavoriteState {
  bool? get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  FavoriteModel? get favorites => throw _privateConstructorUsedError;
  FavoriteListModel? get favoriteList => throw _privateConstructorUsedError;

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
      FavoriteListModel? favoriteList});
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
              as FavoriteListModel?,
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
      FavoriteListModel? favoriteList});
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
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as FavoriteListModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.loading,
      required this.error,
      required this.favorites,
      required this.favoriteList});

  @override
  final bool? loading;
  @override
  final String? error;
  @override
  final FavoriteModel? favorites;
  @override
  final FavoriteListModel? favoriteList;

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
            (identical(other.favoriteList, favoriteList) ||
                other.favoriteList == favoriteList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, favorites, favoriteList);

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
      required final FavoriteListModel? favoriteList}) = _$InitialImpl;

  @override
  bool? get loading;
  @override
  String? get error;
  @override
  FavoriteModel? get favorites;
  @override
  FavoriteListModel? get favoriteList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
