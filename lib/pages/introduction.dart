import 'package:flutter/material.dart';
import 'package:mynotes/pages/intro/first_page.dart';
import 'package:mynotes/pages/intro/second_page.dart';
import 'package:mynotes/pages/intro/last_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              FirstPage(),
              SecondPage(),
              LastPage(),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            alignment: const Alignment(0, 1),
            child: SmoothPageIndicator(controller: controller, count: 3),
          ),
        ],
      ),
    );
  }
}
