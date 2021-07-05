import 'package:flutter/material.dart';
import 'package:navigations/home_page.dart';
import 'package:navigations/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}

