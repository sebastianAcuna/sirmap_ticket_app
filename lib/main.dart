import 'package:flutter/material.dart';
import 'package:ticket/pages/login_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tickets',
      home: LoginPage(),
      theme: ThemeData(
        brightness: Brightness.light,
        // Color()
        primaryColor: Color.fromRGBO(32, 80, 114, 1),
        primaryColorDark: Color.fromRGBO(50, 157, 156, 1),
        accentColor: Color.fromRGBO(86, 197, 150, 1),
      ),
      routes: {
        '/home': (BuildContext context) => LoginPage(),
      },
    );
  }
}
