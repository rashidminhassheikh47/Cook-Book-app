import 'package:flutter/material.dart';

class SlideDot extends StatelessWidget {
  final bool isActive;
  const SlideDot(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 14,
      width: 14,
      decoration: boxDecoration(),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      border:
          Border.all(color: isActive ? Colors.green : Colors.black, width: 2),
      color: isActive ? Colors.green : Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    );
  }
}
