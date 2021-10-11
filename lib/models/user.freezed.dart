// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String id = Strings.EMPTY,
      String nickname = Strings.EMPTY,
      int balance = 0,
      String clubMember = Strings.EMPTY,
      int starCounter = 0}) {
    return _User(
      id: id,
      nickname: nickname,
      balance: balance,
      clubMember: clubMember,
      starCounter: starCounter,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get clubMember => throw _privateConstructorUsedError;
  int get starCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String nickname,
      int balance,
      String clubMember,
      int starCounter});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = freezed,
    Object? balance = freezed,
    Object? clubMember = freezed,
    Object? starCounter = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      clubMember: clubMember == freezed
          ? _value.clubMember
          : clubMember // ignore: cast_nullable_to_non_nullable
              as String,
      starCounter: starCounter == freezed
          ? _value.starCounter
          : starCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String nickname,
      int balance,
      String clubMember,
      int starCounter});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = freezed,
    Object? balance = freezed,
    Object? clubMember = freezed,
    Object? starCounter = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      clubMember: clubMember == freezed
          ? _value.clubMember
          : clubMember // ignore: cast_nullable_to_non_nullable
              as String,
      starCounter: starCounter == freezed
          ? _value.starCounter
          : starCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {this.id = Strings.EMPTY,
      this.nickname = Strings.EMPTY,
      this.balance = 0,
      this.clubMember = Strings.EMPTY,
      this.starCounter = 0});

  @JsonKey(defaultValue: Strings.EMPTY)
  @override
  final String id;
  @JsonKey(defaultValue: Strings.EMPTY)
  @override
  final String nickname;
  @JsonKey(defaultValue: 0)
  @override
  final int balance;
  @JsonKey(defaultValue: Strings.EMPTY)
  @override
  final String clubMember;
  @JsonKey(defaultValue: 0)
  @override
  final int starCounter;

  @override
  String toString() {
    return 'User(id: $id, nickname: $nickname, balance: $balance, clubMember: $clubMember, starCounter: $starCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.clubMember, clubMember) ||
                const DeepCollectionEquality()
                    .equals(other.clubMember, clubMember)) &&
            (identical(other.starCounter, starCounter) ||
                const DeepCollectionEquality()
                    .equals(other.starCounter, starCounter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(clubMember) ^
      const DeepCollectionEquality().hash(starCounter);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {String id,
      String nickname,
      int balance,
      String clubMember,
      int starCounter}) = _$_User;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  int get balance => throw _privateConstructorUsedError;
  @override
  String get clubMember => throw _privateConstructorUsedError;
  @override
  int get starCounter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
