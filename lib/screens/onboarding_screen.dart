import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 200),
        child: PageView(
          controller: controller,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/screen1'),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      )
                    ],
                  ),
                  Text('Get Your Reservations Easily and Efficiently'),
                  Text('Browse time convenient for you and keep a spot'),
                  SizedBox(
                    child: Column(
                      children: [
                        TextButton(onPressed: (){
                          controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                        },
                          child: Text('Next'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
