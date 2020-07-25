import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mobx/app/app_widget.dart';
import 'package:firebase_auth_mobx/app/auth/auth_controller.dart';
import 'package:firebase_auth_mobx/app/auth/auth_repository_firebase.dart';
import 'package:firebase_auth_mobx/app/auth/auth_repository_interface.dart';
import 'package:firebase_auth_mobx/app/auth/store/auth_store.dart';
import 'package:firebase_auth_mobx/app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds {
    return [
      // Auth
      Bind((i) => AuthController(i.get<AuthStore>()), lazy: false),
      Bind((i) => AuthStore(i.get<IAuthRepository>()), lazy: false),
      Bind<IAuthRepository>(
          (i) => AuthRepositoryFirebase(FirebaseAuth.instance),
          lazy: false),
    ];
  }

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', child: (context, args) => LoginPage()),
      ];
}
