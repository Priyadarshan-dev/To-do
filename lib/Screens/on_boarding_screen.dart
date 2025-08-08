import 'package:flutter/material.dart';
import 'package:to_do_task/Intro%20Screens/intro_page.dart';
import 'package:to_do_task/Intro%20Screens/intro_page2.dart';
import 'package:to_do_task/Intro%20Screens/intro_page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _IntroPageState();
}

class _IntroPageState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: _controller,
          children: [IntroPage(), IntroPage2(), IntroPage3()],
        ),
      ),
    );
  }
}
