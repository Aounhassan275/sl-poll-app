import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static1.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView4 extends StatefulWidget {
  const ReadModeView4({super.key});

  @override
  State<ReadModeView4> createState() => _ReadModeView4State();
}

class _ReadModeView4State extends State<ReadModeView4> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic1(
      yesbuttoncolor: pinkColor,
      yesbuttontextcolor: white,
      nobuttoncolor: violet,
      nobuttontextcolor: maincolor,
      row1text1: 'Is',
      row1text2: ' Dirty Oil',
      row1text2color: pinkColor,
      row2text1: 'properly identified as',
      row3text1: 'Dirty Oil Problem',
      row3text2: ' ?',
      Row4: false,
      row4text1: 'Problem name',
      row4text1color: pinkColor,
      row4text2: '',
      route: AppRoutes.manualenter1,
    );
  }
}
