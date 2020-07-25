import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<FirebaseUser> getUser();
  Future<FirebaseUser> signInWithEmailAndPass({String email, String password});
  Future getLogout();
}
