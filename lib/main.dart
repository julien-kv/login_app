import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
          primaryColor: Colors.teal,
          textTheme: CupertinoTextThemeData(
              textStyle:
                  TextStyle(color: Colors.teal, fontWeight: FontWeight.bold))),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
