// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeStatic1 extends StatefulWidget {
  const ReadModeStatic1({
    super.key,
    required this.yesbuttoncolor,
    required this.yesbuttontextcolor,
    required this.nobuttoncolor,
    required this.nobuttontextcolor,
    required this.row1text1,
    required this.row1text2,
    required this.row1text2color,
    required this.row2text1,
    required this.row3text1,
    required this.row3text2,
    required this.row4text1,
    required this.row4text1color,
    required this.row4text2,
    required this.Row4,
    required this.route,
  });

  final yesbuttoncolor;
  final yesbuttontextcolor;
  final nobuttoncolor;
  final nobuttontextcolor;
  final String row1text1;
  final String row1text2;
  final row1text2color;
  final String row2text1;
  final String row3text1;
  final String row3text2;
  final String row4text1;
  final row4text1color;
  final String row4text2;
  final Row4;
  final route;

  @override
  _ReadModeStatic1State createState() => _ReadModeStatic1State();
}

class _ReadModeStatic1State extends State<ReadModeStatic1> {
  bool isYesButtonSelected = false;
  bool isNoButtonSelected = false;

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
                                                widget.row1text1,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                widget.row1text2,
                                                style: TextStyle(
                                                  color: widget.row1text2color,
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
                                                widget.row2text1,
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
                                                widget.row3text1,
                                                style: TextStyle(
                                                  color: pinkColor,
                                                  fontSize: 20,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                widget.row3text2,
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
                                          Visibility(
                                            visible: widget.Row4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  widget.row4text1,
                                                  style: TextStyle(
                                                    color:
                                                        widget.row4text1color,
                                                    fontSize: 20,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  widget.row4text2,
                                                  style: TextStyle(
                                                    color: white,
                                                    fontSize: 20,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
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
                                  color: isYesButtonSelected
                                      ? pinkColor
                                      : widget.yesbuttoncolor,
                                  buttonWidth: 0.38,
                                  color1: isYesButtonSelected
                                      ? white
                                      : widget.yesbuttontextcolor,
                                  onPressed: () {
                                    setState(() {
                                      isYesButtonSelected =
                                          !isYesButtonSelected;
                                      isNoButtonSelected = false;
                                    });
                                    Get.toNamed(widget.route);
                                  },
                                ),
                                SizedBox(width: 10),
                                MainButton(
                                  title: 'No',
                                  color: isNoButtonSelected
                                      ? pinkColor
                                      : widget.nobuttoncolor,
                                  buttonWidth: 0.38,
                                  color1: isNoButtonSelected
                                      ? white
                                      : widget.nobuttontextcolor,
                                  onPressed: () {
                                    setState(() {
                                      isNoButtonSelected = !isNoButtonSelected;
                                      isYesButtonSelected = false;
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
