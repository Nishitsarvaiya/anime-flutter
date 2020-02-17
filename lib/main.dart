import 'package:flutter/material.dart';
import 'package:flutter_animations/Login_Screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Experiments',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
