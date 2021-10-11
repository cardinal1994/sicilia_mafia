import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sicilia_mafia/resources/strings.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(Strings.EMPTY) String id,
    @Default(Strings.EMPTY) String nickname,
    @Default(0) int balance,
    @Default(Strings.EMPTY) String clubMember,
    @Default(0) int starCounter,
  }) = _User;

  //factory User.fromJson(Map<String, dynamic> json) =>
  //    _$UserFromJson(json);
}
