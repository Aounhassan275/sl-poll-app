import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeStatic2 extends StatelessWidget {
  const ReadModeStatic2({
    super.key,
    required this.buttontext,
    required this.row1text1,
    required this.row1text2,
    required this.row1text2color,
    required this.row2text1,
    required this.row3text1,
    required this.row4text1,
    required this.row4text2,
    required this.row5text1,
    required this.row5text1color,
    required this.Row4,
    required this.route1,
  });
  final buttontext;
  final String row1text1;
  final String row1text2;
  final row1text2color;
  final String row2text1;
  final String row3text1;
  final String row4text1;
  final String row4text2;
  final String row5text1;
  final Color row5text1color;
  final bool Row4;
  final route1;

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
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 21,
                                    child: Divider(
                                      color: grey,
                                      thickness: 2,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'POLL USER RESULT PREVIEW',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 21,
                                    child: Divider(
                                      color: grey,
                                      thickness: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, bottom: 60),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.44,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.22,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      row1text1,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      row1text2,
                                                      style: TextStyle(
                                                        color: row1text2color,
                                                        fontSize: 20,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      row2text1,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      row3text1,
                                                      style: TextStyle(
                                                        color: white,
                                                        fontSize: 20,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 16),
                                                Visibility(
                                                  visible: Row4,
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            row4text1,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFE55270),
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          Text(
                                                            row4text2,
                                                            style: TextStyle(
                                                              color: white,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 8),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            row5text1,
                                                            style: TextStyle(
                                                              color:
                                                                  row5text1color,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          MainButton(
                                            title: buttontext,
                                            color: pinkColor,
                                            buttonWidth: 0.75,
                                            color1: white,
                                           
                                          ),
                                        ])
                                  )
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
        ));
  }
}
