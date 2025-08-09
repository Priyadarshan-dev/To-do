import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
  var introImages = ["intro3", "intro2", "intro1"];
  var introScreens = [IntroPage(), IntroPage2(), IntroPage3()];
  int currentIndex = 0;
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
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Text(
                      "SKIP",
                      style: TextStyle(fontSize: 18, color: Colors.grey[300]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/images/${introImages[currentIndex]}.png",
              height: 296,
              width: 271,
            ),
          
            SizedBox(height: 40),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 4,
                dotWidth: 25,
                spacing: 10,
                dotColor: Colors.white,
                activeDotColor: Colors.white,
              ),
            ),

            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [IntroPage(), IntroPage2(), IntroPage3()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
