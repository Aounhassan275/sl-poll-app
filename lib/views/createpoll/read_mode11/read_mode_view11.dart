import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static2.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView11 extends StatefulWidget {
  const ReadModeView11({super.key});

  @override
  State<ReadModeView11> createState() => _ReadModeView11State();
}

class _ReadModeView11State extends State<ReadModeView11> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic2(
      row1text1: 'No,',
      row1text2: ' Solution name',
      row1text2color: blue,
      row2text1: 'does not enable the',
      row3text1: ' substitution for',
      Row4: true,
      row4text1: 'Problem name',
      row4text2: 'by',
      row5text1: '',
      row5text1color: blue,
      buttontext: 'Submit poll for approval',
      route1: AppRoutes.readmode7,
    );
  }
}
