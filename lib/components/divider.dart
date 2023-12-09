import 'package:flutter/material.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.name,
    required this.startingwidth,
    required this.endingwidth,
  }) : super(key: key);

  final String name;
  final double startingwidth;
  final double endingwidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: startingwidth,
          child: Divider(
            color: lightGrey,
            thickness: 2,
          ),
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
            color: blackgrey,
            fontSize: 13,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: endingwidth,
          child: Divider(
            color: lightGrey,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
