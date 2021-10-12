part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool loading,
    @Default(false) bool isUserAuthorized,
    @Default(false) bool hasException,
    @Default(Strings.EMPTY) String errorMessage,
  }) = _AuthState;
}
