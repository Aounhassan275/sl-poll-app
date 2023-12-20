import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ReadModeView5 extends StatelessWidget {
  const ReadModeView5({
    super.key,
  });

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
                                      height:
                                          MediaQuery.of(context).size.height *
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
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Yes ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dirty Oil',
                                                        style: TextStyle(
                                                          color: pinkColor,
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
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'properly identified as',
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
                                                  SizedBox(height: 8),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Dirty Oil Problem',
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
                                                ],
                                              ),
                                            ),
                                            MainButton(
                                              title: 'Next',
                                              color: pinkColor,
                                              buttonWidth: 0.75,
                                              color1: white,
                                            ),
                                          ]))
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
