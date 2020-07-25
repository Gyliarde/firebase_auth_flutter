import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mobx/app/interfaces/auth_repository_interface.dart';

class AuthRepositoryFirebase implements IAuthRepository {
  final FirebaseAuth auth;

  AuthRepositoryFirebase(this.auth);

  @override
  Future<FirebaseUser> getUser() {
    return auth.currentUser();
  }

  @override
  Future getLogout() {
    return auth.signOut();
  }

  @override
  Future<FirebaseUser> signInWithEmailAndPass(
      {String email, String password}) async {
    return await auth.signInWithEmailAndPassword(
        email: email, password: password);
  }
}
