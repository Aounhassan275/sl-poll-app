// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    @required this.title,
    this.buttonWidth = 0.99,
    @required this.onPressed,
  });
  final title;
  final buttonWidth;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * buttonWidth,
        height: 60,
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
