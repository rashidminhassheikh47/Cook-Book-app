import 'package:cook_book/components/constants.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  const GreenButton(
      {Key? key, required this.buttonTitle, required this.onPress})
      : super(key: key);

  final String buttonTitle;
  final dynamic onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 140,
      decoration: kGreenButtonDecoration,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          buttonTitle,
          style: kGreenButtonTextStyle,
        ),
      ),
    );
  }
}
