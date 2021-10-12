part of 'players_cubit.dart';

@freezed
abstract class PlayersState with _$PlayersState {
  const factory PlayersState({
    @Default(false) bool loading,
    List<Player>? users,
    List<Player>? searchUsers,
    @Default(false) bool isUserAuthorized,
    @Default(false) bool hasException,
  }) = _PlayersState;
}
