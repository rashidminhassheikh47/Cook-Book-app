import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookBookAndLogo extends StatelessWidget {
  const CookBookAndLogo({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        logoImage(),
        cookBookImage(),
        subtitleText(),
        logInToYourAccount(),
      ],
    );
  }

  Padding logInToYourAccount() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: GoogleFonts.actor(fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),
      ),
    );
  }

  Text subtitleText() {
    return Text(
      "Deliver Favorite Food",
      style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),
    );
  }

  Padding cookBookImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Image.asset('assets/images/cook_book.png'),
    );
  }

  Padding logoImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Image.asset('assets/images/getLogo.png'),
    );
  }
}
