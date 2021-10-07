import 'package:cook_book/components/green_button.dart';
import 'package:cook_book/components/sign_button.dart';
import 'package:cook_book/components/sign_text_field.dart';
import 'package:cook_book/screens/sign_in/sign_in.dart';
import 'package:cook_book/screens/sign_up/components/cookbook_logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  static String scrId = "/sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            backgroundImage(size),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CookBookAndLogo(
                    title: "Sign Up",
                  ),
                  Column(
                    children: [
                      userNameTextField(),
                      emailTextField(),
                      passwordTextField(),
                      orContinueText(),
                    ],
                  ),
                  Row(
                    children: [
                      facebookBtn(),
                      googleBtn(),
                    ],
                  ),
                  alreadyAccountBtn(onPress: () {
                    Navigator.pushNamed(context, SignIn.scrId);
                  }),
                  createButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding alreadyAccountBtn({dynamic onPress}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 3),
      child: TextButton(
        child: Text(
          "Already have an account?",
          style: GoogleFonts.actor(fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.5,color:Color(0xff3B3B3B)),
        ),
        onPressed: onPress,
      ),
    );
  }

  Expanded googleBtn() {
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
      icon: Icons.email,
      obScure: false,
    );
  }
  SignTextField userNameTextField() {
    return SignTextField(
      hintText: 'user name',
      icon: Icons.person,
      obScure: false,
    );
  }

  SizedBox backgroundImage(Size size) {
    return SizedBox(
      width: size.width,
      child: Image.asset(
        "assets/images/get_pattern.png",
        fit: BoxFit.fill,
      ),
    );
  }

  Padding orContinueText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text("Or Continue With"),
    );
  }

  GreenButton createButton() {
    return GreenButton(
      buttonTitle: 'Create',
      onPress: () {},
    );
  }
}
