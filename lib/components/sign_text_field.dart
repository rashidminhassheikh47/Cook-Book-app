import 'package:cook_book/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignTextField extends StatelessWidget {
  const SignTextField(
      {Key? key,
      required this.hintText,
      required this.obScure,
      this.onChanged,
      required this.icon})
      : super(key: key);

  final String hintText;
  final dynamic onChanged;
  final IconData icon;
  final bool obScure;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.green.shade900,
              blurRadius: 0,
              spreadRadius: 1,
              offset: Offset(0.1, 1.5))
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.green,
        decoration: kSignTextFieldInputDecoration.copyWith(
          hintText: hintText,
          hintStyle:   GoogleFonts.actor(fontSize: 14,fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,color: Colors.black26,),
          prefixIcon: Icon(icon, color: Colors.green),
        ),
        obscureText: obScure,
      ),
    );
  }
}
