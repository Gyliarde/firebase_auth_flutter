import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Com sabor',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          backgroundColor: Color.fromARGB(175, 176, 170, 118)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
