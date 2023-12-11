import 'package:flutter/material.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 40,
      width: 40,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
      decoration: BoxDecoration(
        border: Border.all(color: grey),
        color: isChecked ? Color(4283908795) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: isChecked
          ? Icon(
              Icons.check,
              color: Colors.transparent,
            )
          : Icon(
              Icons.check,
              color: Colors.white,
            ),
    );
  }
}
