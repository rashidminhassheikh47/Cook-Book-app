import 'dart:ui';

import 'package:flutter/material.dart';

const kGreenButtonDecoration = BoxDecoration(
  color: Colors.green,
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
);

const kGreenButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400);

const kSignButtonDecoration = BoxDecoration(
    color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)));

const kTextButtonStyle = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
);

const kSignTextFieldInputDecoration = InputDecoration(
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  // icon: ,
);

const kTitleTextStyle = TextStyle(
  fontSize: 22,
);

const kSubtitleTextStyle = TextStyle(fontSize: 14);
