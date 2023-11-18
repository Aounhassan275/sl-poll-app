// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/utils/fontWeight.dart';

class IconInputField extends StatelessWidget {
  const IconInputField({
    Key? key,
    this.controller,
    this.hint,
    this.img,
    this.obscure = false,
    this.maxlines = false,
    this.readOnly = false,
    this.fillcolor = Colors.white,
    this.validator,
    this.autovalidateMode,
    this.type = TextInputType.text,
  }) : super(key: key);

  final controller;
  final validator;
  final obscure;
  final hint;
  final type;
  final fillcolor;
  final autovalidateMode;
  final maxlines;
  final readOnly;
  final img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: TextFormField(
        readOnly: readOnly,
        obscureText: obscure,
        controller: controller,
        validator: validator,
        autovalidateMode: autovalidateMode ??
            (validator == true.obs
                ? AutovalidateMode.always
                : AutovalidateMode.onUserInteraction),
        style: TextStyle(color: maincolor),
        keyboardType: type,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            img,
            height: 16,
            width: 16,
            fit: BoxFit.scaleDown,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: fillcolor,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: w500,
            color: grey,
          ),
        ),
      ),
    );
  }
}
