import 'package:flutter/material.dart';
import './views/login_screen.dart';


class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: "RxDart Login App",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}