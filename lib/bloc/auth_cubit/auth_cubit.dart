import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sicilia_mafia/resources/strings.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.auth) : super(const AuthState());

  final FirebaseAuth auth;

  /*Future<void> signUp({required String email, required String password}) async {
    emit(state.copyWith(loading: true));

    try {
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        _sharedPreferences.setString(
            Strings.SHARED_PREFERENCES_UID_KEY, auth.currentUser!.uid);
        emit(state.copyWith(
            loading: false,
            isUserAuthorized: true,
            hasException: false,
            errorMessage: Strings.EMPTY));
      });
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
          loading: false,
          hasException: true,
          errorMessage: e.message.toString()));
    } on Exception catch (e) {
      emit(state.copyWith(
          loading: false,
          hasException: true,
          errorMessage: 'Ooops... Something wrong'));
    }
  }*/

  Future<void> signIn({required String email, required String password}) async {
    emit(state.copyWith(loading: true));

    try {
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        _sharedPreferences.setString(
            Strings.SHARED_PREFERENCES_UID_KEY, auth.currentUser!.uid);
        emit(state.copyWith(
            loading: false,
            isUserAuthorized: true,
            hasException: false,
            errorMessage: Strings.EMPTY));
      });
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
          loading: false,
          hasException: true,
          errorMessage: e.message.toString()));
    } on Exception catch (e) {
      emit(state.copyWith(
          loading: false,
          hasException: true,
          errorMessage: 'Ooops... Something wrong'));
    }
  }

  Future<void> signOut() async {
    try {
      emit(state.copyWith(loading: true));
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      await auth.signOut().whenComplete(() {
        _sharedPreferences.setString(Strings.SHARED_PREFERENCES_UID_KEY, '');
        emit(state.copyWith(
            loading: false,
            isUserAuthorized: false,
            hasException: false,
            errorMessage: Strings.EMPTY));
      });
    } on Exception catch (e) {
      emit(state.copyWith(
        loading: false,
        hasException: true,
        errorMessage: 'Ooops... Something wrong',
      ));
    }
  }

  Future<void> changeExceptionStatus({required bool hasException}) async {
    emit(state.copyWith(hasException: hasException));
  }
}
