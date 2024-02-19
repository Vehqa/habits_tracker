import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
      ]),
    );
  }
}
