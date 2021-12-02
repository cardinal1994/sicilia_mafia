import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sicilia_mafia/models/player.dart';
import 'package:sicilia_mafia/resources/strings.dart';

part 'players_cubit.freezed.dart';

part 'players_state.dart';

class PlayersCubit extends Cubit<PlayersState> {
  PlayersCubit(this.auth, this.store) : super(const PlayersState());

  final FirebaseAuth auth;
  final FirebaseFirestore store;

  Future<void> addPlayer({
    required String nickname,
    required int balance,
    required String clubMember,
    required int starCounter,
    File? image,
  }) async {
    try {
      emit(state.copyWith(loading: true));

      late String _imageURL;

      if (!state.isUserClubPlayer) {
        final Reference ref = FirebaseStorage.instance
            .ref()
            .child('players_images')
            .child('$clubMember-$nickname.jpg');

        await ref.putFile(image!);

        _imageURL = await ref.getDownloadURL();
      }

      await store
          .collection(Strings.PLAYERS_FIRESTORE_COLLECTION)
          .doc()
          .set(<String, dynamic>{
        Strings.NICKNAME_KEY: nickname,
        Strings.BALANCE_KEY: balance,
        Strings.CLUB_MEMBER_KEY: clubMember,
        Strings.STAR_COUNTER_KEY: starCounter,
        if (!state.isUserClubPlayer) Strings.IMAGE_URL_KEY: _imageURL,
      });
      emit(state.copyWith(loading: false));
    } on Exception catch (e) {
      print(e.toString());
      emit(state.copyWith(hasException: true));
    }
  }

  Future<void> getPlayers() async {
    emit(state.copyWith(loading: true));
    try {
      final Stream<QuerySnapshot<Map<String, dynamic>>> snapshot =
          store.collection(Strings.PLAYERS_FIRESTORE_COLLECTION).snapshots();

      snapshot.listen((QuerySnapshot<Map<String, dynamic>> event) {
        final List<Player> users = event.docs
            .map((QueryDocumentSnapshot<Map<String, dynamic>> e) =>
                Player.fromJson(e.data()))
            .toList();
        emit(state.copyWith(users: users, loading: false));
      });
    } on Exception catch (e) {
      emit(state.copyWith(hasException: true, loading: false));
    }
  }

  Future<void> searchPlayers(String value) async {
    if (value.isEmpty) {
      emit(state.copyWith(searchUsers: null));
    } else {
      emit(state.copyWith(
          searchUsers: state.users!
              .where((Player element) =>
                  element.nickname.toLowerCase().contains(value))
              .toList()));
    }
  }

  Future<void> changeSelectedClubRole({required String newRole}) async {
    emit(state.copyWith(selectedClubRole: newRole));
  }
}
