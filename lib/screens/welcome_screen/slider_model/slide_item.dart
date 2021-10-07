import 'package:cook_book/components/constants.dart';
import 'package:cook_book/screens/welcome_screen/slider_model/slider_model.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  const SlideItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(slideViews[index].productImage),
        Text(
          slideViews[index].title,
          style: kTitleTextStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          slideViews[index].subtitle,
          textAlign: TextAlign.center,
          style: kSubtitleTextStyle,
        ),
      ],
    );
  }
}
