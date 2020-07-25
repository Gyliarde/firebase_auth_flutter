import 'package:firebase_auth_mobx/app/auth/store/auth_store.dart';
import 'package:flutter/material.dart';

class AuthController {
  final AuthStore auth;

  AuthController(this.auth);

  bool isLoggedIn() {
    return auth != null && auth.user != null;
  }

  get userName => auth.user.email;

  signIn(
          {@required String email,
          @required String pass,
          @required VoidCallback onSuccess,
          @required VoidCallback onFail}) =>
      auth.signIn(
          email: email, pass: pass, onSuccess: onSuccess, onFail: onFail);

  signOut() => auth.logout();
}
