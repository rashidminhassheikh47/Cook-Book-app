import 'package:cook_book/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignButton extends StatelessWidget {
  const SignButton({Key? key, required this.buttonText, required this.iconPath})
      : super(key: key);
  final String iconPath;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: kSignButtonDecoration.copyWith(
          border: Border.all(width: 0.5, color: Colors.grey)),
      height: 60,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(kTextButtonStyle),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              iconPath,
              width: 25,
            ),
            Text(
              buttonText,
              style: GoogleFonts.actor(fontSize: 14,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal,letterSpacing: 0.5,color: Colors.black ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
