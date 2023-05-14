import 'package:flutter/material.dart';
import 'package:reatapp/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF1F2937),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0XFF066FFD)),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),

      home: FirstScreen(),
    );
  }
}