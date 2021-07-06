import 'package:flutter/material.dart';
import 'package:navigations/app_routes.dart';
import 'package:navigations/home_page.dart';
import 'package:navigations/login_page.dart';
import 'package:navigations/settings_page.dart';

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
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => LoginPage(),
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.settings: (context) {
          final arguments = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return SettingsPage(
            count: arguments['count'],
            onChanged: arguments['onChanged']);
        },
      },
    );
  }
}

