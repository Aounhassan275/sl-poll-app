import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ManualEnterContainer extends StatelessWidget {
  const ManualEnterContainer({
    super.key,
    this.text,
    this.color,
    this.bgcolor,
    this.textcolor,
    this.bordercolor,
  });
  final text;
  final color;
  final bgcolor;
  final textcolor;
  final bordercolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 20,
        bottom: 10,
      ),
      decoration: ShapeDecoration(
        color: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: SvgPicture.asset(
                    'assets/images/check.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  decoration: ShapeDecoration(
                    color: color,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: bordercolor, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textcolor,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
