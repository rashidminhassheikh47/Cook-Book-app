import 'package:flutter/material.dart';

class SplashScreeen extends StatelessWidget {
  static String scrId = '/splash_screen';
  const SplashScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: size.width,
            child: Image.asset(
              "assets/images/get_pattern.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/getLogo.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/cook_book.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/welc_description.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
