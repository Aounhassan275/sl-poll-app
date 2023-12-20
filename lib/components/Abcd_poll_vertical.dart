import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class AbcdPollVertical extends StatelessWidget {
  const AbcdPollVertical(
      {super.key,
      required this.problem,
      required this.solution,
      required this.solutionfunction});

  final bool problem;
  final bool solution;
  final bool solutionfunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: maincolor, spreadRadius: -0.5, offset: Offset(-3, 0))
        ], color: lightGrey, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Abcd Poll',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: maincolor),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: SvgPicture.asset(
                                'assets/images/calendar-days-red.svg'),
                          ),
                          Text(
                            '28.10.23 - 30.10.23',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: maincolor),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: SvgPicture.asset('assets/images/map-pin.svg'),
                  ),
                  Text(
                    'USA',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: maincolor),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/users-purple.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        '120',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: maincolor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset('assets/images/eyeoff.svg'),
                    ),
                    Text(
                      'Private',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: maincolor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Entity in Question:',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: textcolor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Visibility(
                                visible: problem,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: pinkColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 5,
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Text(
                                        'Problem',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: solution,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Text(
                                      'Solution',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Visibility(
                            visible: solutionfunction,
                            child: Container(
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  'Solution Function',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
