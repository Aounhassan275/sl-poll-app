// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView12 extends StatefulWidget {
  const ReadModeView12({super.key});

  @override
  _ReadModeView12State createState() => _ReadModeView12State();
}

class _ReadModeView12State extends State<ReadModeView12> {
  bool isYesButtonSelected = false;
  bool isNoButtonSelected = false;

  bool isSelected1 = false;
  bool isCheckBoxChecked1 = false;
  bool ischecked1 = false;

  bool isSelected2 = false;
  bool isCheckBoxChecked2 = false;
  bool ischecked2 = false;

  bool isSelected3 = false;
  bool isCheckBoxChecked3 = false;
  bool ischecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/preview_background.svg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.99,
            ),
            Positioned(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60, left: 25, right: 25, bottom: 40),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.84,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(18, 225, 224, 224),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 20),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          bottom: 15,
                                          left: 20,
                                          right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromARGB(120, 169, 156, 156),
                                      ),
                                      child: Row(children: [
                                        SvgPicture.asset(
                                          'assets/images/edit.svg',
                                          // ignore: deprecated_member_use
                                          color: Color(0xFFE0DBDB),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'View Note',
                                          style: TextStyle(
                                            color: Color(0xFFE0DBDB),
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 80, right: 20, left: 20),
                                child: Container(
                                  child: Column(children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Does',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                'Solution Function name',
                                                style: TextStyle(
                                                  color: green,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'enable the replacement for the',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Problem name',
                                                style: TextStyle(
                                                  color: pinkColor,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                'by',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Problem name',
                                                style: TextStyle(
                                                  color: blue,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                '?',
                                                style: TextStyle(
                                                  color: blue,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MainButton(
                                  title: 'Yes',
                                  color:
                                      isYesButtonSelected ? pinkColor : violet,
                                  buttonWidth: 0.38,
                                  color1:
                                      isYesButtonSelected ? white : maincolor,
                                  onPressed: () {
                                    setState(() {
                                      isYesButtonSelected =
                                          !isYesButtonSelected;
                                      isNoButtonSelected = false;
                                    });
                                    if (isSelected1 &&
                                        !isSelected2 &&
                                        !isSelected3) {
                                      Navigator.pushNamed(
                                          context, AppRoutes.readmode3);
                                    } else {
                                      Navigator.pushNamed(
                                          context, AppRoutes.readmode6);
                                    }
                                    ;
                                  },
                                ),
                                SizedBox(width: 10),
                                MainButton(
                                  title: 'No',
                                  color:
                                      isNoButtonSelected ? pinkColor : violet,
                                  buttonWidth: 0.38,
                                  color1:
                                      isNoButtonSelected ? white : maincolor,
                                  onPressed: () {
                                    setState(() {
                                      isNoButtonSelected = !isNoButtonSelected;
                                      isYesButtonSelected = false;
                                    });
                                    setState(() {
                                      isYesButtonSelected =
                                          !isYesButtonSelected;
                                      isNoButtonSelected = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
