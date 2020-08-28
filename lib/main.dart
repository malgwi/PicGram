import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        ProfilePage.id: (context) => ProfilePage(),
      },
    );
  }
}
