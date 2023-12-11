import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static1.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView12 extends StatefulWidget {
  const ReadModeView12({
    super.key,
  });

  @override
  State<ReadModeView12> createState() => _ReadModeView12State();
}

class _ReadModeView12State extends State<ReadModeView12> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic1(
      yesbuttoncolor: violet,
      yesbuttontextcolor: maincolor,
      nobuttoncolor: pinkColor,
      nobuttontextcolor: white,
      row1text1: 'Does',
      row1text2: ' Solution Function name',
      row1text2color: green,
      row2text1: 'enable the replacement for the',
      row3text1: 'Problem name',
      row3text2: ' by',
      Row4: true,
      row4text1: 'Solution name',
      row4text1color: blue,
      row4text2: ' ?',
       route: AppRoutes.readmode7,
    );
  }
}
