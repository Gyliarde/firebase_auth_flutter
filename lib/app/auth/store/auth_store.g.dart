// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$userAtom = Atom(name: '_AuthStoreBase.user');

  @override
  FirebaseUser get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(FirebaseUser value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$logoutAsyncAction = AsyncAction('_AuthStoreBase.logout');

  @override
  Future<dynamic> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$signInAsyncAction = AsyncAction('_AuthStoreBase.signIn');

  @override
  Future<dynamic> signIn(
      {@required String email,
      @required String pass,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) {
    return _$signInAsyncAction.run(() => super.signIn(
        email: email, pass: pass, onSuccess: onSuccess, onFail: onFail));
  }

  final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase');

  @override
  dynamic setUser(FirebaseUser value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
