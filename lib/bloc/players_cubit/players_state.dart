part of 'players_cubit.dart';

@freezed
abstract class PlayersState with _$PlayersState {
  const factory PlayersState({
    @Default(false) bool loading,
    List<Player>? users,
    List<Player>? searchUsers,
    @Default(false) bool isUserAuthorized,
    @Default(false) bool hasException,
    File?  newPlayerPhoto,
    @Default(Strings.CLUB_PLAYER) String selectedClubRole,
  }) = _PlayersState;

  const PlayersState._();

  bool get isUserClubPlayer => selectedClubRole == Strings.CLUB_PLAYER;
  bool get isNewPlayerPhotoExist => newPlayerPhoto != null;

}
