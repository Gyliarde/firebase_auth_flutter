import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mobx/app/auth/auth_repository_interface.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final IAuthRepository _authRepository;

  @observable
  FirebaseUser user;

  @action
  setUser(FirebaseUser value) {
    user = value;
  }

  _AuthStoreBase(this._authRepository) {
    print("Instanciando AUTH FIREBASE ");
    _authRepository.getUser().then(setUser).catchError((e) {
      print('ERRORRRRRR user is not Logged');
    });
  }

  @action
  Future logout() async {
    await _authRepository.getLogout();
    setUser(null);
  }

  @action
  Future signIn(
      {@required String email,
      @required String pass,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) async {
    _authRepository
        .signInWithEmailAndPass(email: email, password: pass)
        .then((user) async {
      setUser(user);
      onSuccess();
    }).catchError((e) {
      onFail();
    });
  }
}
