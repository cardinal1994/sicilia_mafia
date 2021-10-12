// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'players_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayersStateTearOff {
  const _$PlayersStateTearOff();

  _PlayersState call(
      {bool loading = false,
      List<Player>? users,
      List<Player>? searchUsers,
      bool isUserAuthorized = false,
      bool hasException = false}) {
    return _PlayersState(
      loading: loading,
      users: users,
      searchUsers: searchUsers,
      isUserAuthorized: isUserAuthorized,
      hasException: hasException,
    );
  }
}

/// @nodoc
const $PlayersState = _$PlayersStateTearOff();

/// @nodoc
mixin _$PlayersState {
  bool get loading => throw _privateConstructorUsedError;
  List<Player>? get users => throw _privateConstructorUsedError;
  List<Player>? get searchUsers => throw _privateConstructorUsedError;
  bool get isUserAuthorized => throw _privateConstructorUsedError;
  bool get hasException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayersStateCopyWith<PlayersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayersStateCopyWith<$Res> {
  factory $PlayersStateCopyWith(
          PlayersState value, $Res Function(PlayersState) then) =
      _$PlayersStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      List<Player>? users,
      List<Player>? searchUsers,
      bool isUserAuthorized,
      bool hasException});
}

/// @nodoc
class _$PlayersStateCopyWithImpl<$Res> implements $PlayersStateCopyWith<$Res> {
  _$PlayersStateCopyWithImpl(this._value, this._then);

  final PlayersState _value;
  // ignore: unused_field
  final $Res Function(PlayersState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? users = freezed,
    Object? searchUsers = freezed,
    Object? isUserAuthorized = freezed,
    Object? hasException = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      searchUsers: searchUsers == freezed
          ? _value.searchUsers
          : searchUsers // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      isUserAuthorized: isUserAuthorized == freezed
          ? _value.isUserAuthorized
          : isUserAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasException: hasException == freezed
          ? _value.hasException
          : hasException // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PlayersStateCopyWith<$Res>
    implements $PlayersStateCopyWith<$Res> {
  factory _$PlayersStateCopyWith(
          _PlayersState value, $Res Function(_PlayersState) then) =
      __$PlayersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      List<Player>? users,
      List<Player>? searchUsers,
      bool isUserAuthorized,
      bool hasException});
}

/// @nodoc
class __$PlayersStateCopyWithImpl<$Res> extends _$PlayersStateCopyWithImpl<$Res>
    implements _$PlayersStateCopyWith<$Res> {
  __$PlayersStateCopyWithImpl(
      _PlayersState _value, $Res Function(_PlayersState) _then)
      : super(_value, (v) => _then(v as _PlayersState));

  @override
  _PlayersState get _value => super._value as _PlayersState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? users = freezed,
    Object? searchUsers = freezed,
    Object? isUserAuthorized = freezed,
    Object? hasException = freezed,
  }) {
    return _then(_PlayersState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      searchUsers: searchUsers == freezed
          ? _value.searchUsers
          : searchUsers // ignore: cast_nullable_to_non_nullable
              as List<Player>?,
      isUserAuthorized: isUserAuthorized == freezed
          ? _value.isUserAuthorized
          : isUserAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasException: hasException == freezed
          ? _value.hasException
          : hasException // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlayersState implements _PlayersState {
  const _$_PlayersState(
      {this.loading = false,
      this.users,
      this.searchUsers,
      this.isUserAuthorized = false,
      this.hasException = false});

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final List<Player>? users;
  @override
  final List<Player>? searchUsers;
  @JsonKey(defaultValue: false)
  @override
  final bool isUserAuthorized;
  @JsonKey(defaultValue: false)
  @override
  final bool hasException;

  @override
  String toString() {
    return 'PlayersState(loading: $loading, users: $users, searchUsers: $searchUsers, isUserAuthorized: $isUserAuthorized, hasException: $hasException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayersState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality()
                .equals(other.searchUsers, searchUsers) &&
            (identical(other.isUserAuthorized, isUserAuthorized) ||
                other.isUserAuthorized == isUserAuthorized) &&
            (identical(other.hasException, hasException) ||
                other.hasException == hasException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(searchUsers),
      isUserAuthorized,
      hasException);

  @JsonKey(ignore: true)
  @override
  _$PlayersStateCopyWith<_PlayersState> get copyWith =>
      __$PlayersStateCopyWithImpl<_PlayersState>(this, _$identity);
}

abstract class _PlayersState implements PlayersState {
  const factory _PlayersState(
      {bool loading,
      List<Player>? users,
      List<Player>? searchUsers,
      bool isUserAuthorized,
      bool hasException}) = _$_PlayersState;

  @override
  bool get loading;
  @override
  List<Player>? get users;
  @override
  List<Player>? get searchUsers;
  @override
  bool get isUserAuthorized;
  @override
  bool get hasException;
  @override
  @JsonKey(ignore: true)
  _$PlayersStateCopyWith<_PlayersState> get copyWith =>
      throw _privateConstructorUsedError;
}
