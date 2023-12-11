import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/read_mode_static2.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView5 extends StatefulWidget {
  const ReadModeView5({super.key});

  @override
  State<ReadModeView5> createState() => _ReadModeView5State();
}

class _ReadModeView5State extends State<ReadModeView5> {
  @override
  Widget build(BuildContext context) {
    return ReadModeStatic2(
      row1text1: 'Yes',
      row1text2: ' Dirty Oil',
      row1text2color: pinkColor,
      row2text1: 'properly identified as',
      row3text1: 'Dirty Oil Problem',
      buttontext: 'Next',
      Row4: false,
      row4text1: 'Problem name',
      row4text2: '',
      row5text1: '',
      row5text1color: blue,
      route1: AppRoutes.manualenter1,
    );
  }
}
