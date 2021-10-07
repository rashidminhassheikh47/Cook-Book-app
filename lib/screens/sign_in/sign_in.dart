import 'package:cook_book/components/green_button.dart';
import 'package:cook_book/components/sign_button.dart';
import 'package:cook_book/components/sign_text_field.dart';
import 'package:cook_book/screens/sign_up/components/cookbook_logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  static String scrId = "/sign_in";
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            backgroundPatternImage(size),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CookBookAndLogo(
                    title: "Log in To Your Account",
                  ),
                  Column(
                    children: [
                      emailTextField(),
                      passwordTextField(),
                      orContinueWithText(),
                    ],
                  ),
                  Row(
                    children: [
                      facebookBtn(),
                      googlebtn(),
                    ],
                  ),
              forgotPasswordBtn(),
                  loginBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding forgotPasswordBtn() {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  "Forgot Your Password?",
                  style: GoogleFonts.actor(fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.5,color:Color(0xff3B3B3B),),

                ),
                onPressed: () {},
              ),
            );
  }

  GreenButton loginBtn() {
    return GreenButton(
      buttonTitle: 'Login',
      onPress: () {},
    );
  }

  Expanded googlebtn() {
    return Expanded(
      child: SignButton(
        buttonText: 'Google',
        iconPath: "assets/icons/google_icon.png",
      ),
    );
  }

  Expanded facebookBtn() {
    return Expanded(
      child: SignButton(
        buttonText: 'Facebook',
        iconPath: "assets/icons/facebook_icon.png",
      ),
    );
  }

  Padding orContinueWithText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text("Or Continue With"),
    );
  }

  SignTextField passwordTextField() {
    return SignTextField(
      hintText: 'Password',
      icon: Icons.lock,
      obScure: true,
    );
  }

  SignTextField emailTextField() {
    return SignTextField(
      hintText: 'email',
      icon: Icons.person,
      obScure: false,
    );
  }

  SizedBox backgroundPatternImage(Size size) {
    return SizedBox(
      width: size.width,
      child: Image.asset(
        "assets/images/get_pattern.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
