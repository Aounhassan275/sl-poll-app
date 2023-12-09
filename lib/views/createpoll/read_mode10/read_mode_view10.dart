import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static1.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView10 extends StatefulWidget {
  const ReadModeView10({
    super.key,
  });

  @override
  State<ReadModeView10> createState() => _ReadModeView10State();
}

class _ReadModeView10State extends State<ReadModeView10> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic1(
      yesbuttoncolor: violet,
      yesbuttontextcolor: maincolor,
      nobuttoncolor: pinkColor,
      nobuttontextcolor: white,
      row1text1: 'Does',
      row1text2: ' Solution name',
      row1text2color: blue,
      row2text1: 'enable the substitution for',
      row3text1: 'Problem name',
      row3text2: ' ?',
      Row4: false,
      row4text1: 'Problem name',
      row4text1color: false,
      row4text2: '',
       route: AppRoutes.readmode7,
    );
  }
}
