import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static2.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView13 extends StatefulWidget {
  const ReadModeView13({super.key});

  @override
  State<ReadModeView13> createState() => _ReadModeView13State();
}

class _ReadModeView13State extends State<ReadModeView13> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic2(
      row1text1: 'No,',
      row1text2: ' Solution Function name',
      row1text2color: green,
      row2text1: ' does not enable the',
      row3text1: 'replacement for the',
      Row4: true,
      row4text1: 'Problem name',
      row4text2: ' by',
      row5text1: 'Solution name',
      row5text1color: blue,
      buttontext: 'Submit poll for approval',
      route1: AppRoutes.readmode7,
    );
  }
}
