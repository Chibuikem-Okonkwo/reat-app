import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'splash_screen.dart';
import 'onboarding_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    super.initState();
    changeRoute();
  }

  void changeRoute() async{
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Image.asset('images/reat.png'),
          SizedBox(height: 200),
        ],
      ),
    );
  }
}