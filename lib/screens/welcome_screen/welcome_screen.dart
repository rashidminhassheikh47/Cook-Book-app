import 'package:cook_book/screens/sign_up/sign_up.dart';
import 'package:cook_book/screens/welcome_screen/slider_model/slide_item.dart';
import 'package:cook_book/screens/welcome_screen/slider_model/slide_dot.dart';
import 'package:cook_book/screens/welcome_screen/slider_model/slider_model.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String scrId = "/welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentPage = 0;

  onPageChange(index) {
    setState(() {
      currentPage = index;
      if (currentPage == 2) {
        Navigator.pushReplacementNamed(context, SignUp.scrId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [pageViewBuilder(), slideDotBuilder()],
        ),
      ),
    );
  }

  Padding slideDotBuilder() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < slideViews.length - 1; i++)
            if (i == currentPage)
              const SlideDot(true)
            else
              const SlideDot(false)
        ],
      ),
    );
  }

  Expanded pageViewBuilder() {
    return Expanded(
      child: PageView.builder(
        itemCount: slideViews.length,
        onPageChanged: onPageChange,
        itemBuilder: (context, index) => SlideItem(index: index),
      ),
    );
  }
}
