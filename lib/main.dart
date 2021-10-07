import 'package:cook_book/screens/sign_in/sign_in.dart';
import 'package:cook_book/screens/sign_up/sign_up.dart';
import 'package:cook_book/screens/splash_screen.dart';
import 'package:cook_book/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cook book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.scrId,
      routes: {
        SplashScreeen.scrId: (context) => const SplashScreeen(),
        WelcomeScreen.scrId: (context) => const WelcomeScreen(),
        SignUp.scrId: (context) => const SignUp(),
        SignIn.scrId: (context) => const SignIn(),
      },
    );
  }
}
