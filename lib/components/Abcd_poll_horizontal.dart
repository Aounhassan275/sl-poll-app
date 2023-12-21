import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class AbcdPollHorizontal extends StatelessWidget {
  const AbcdPollHorizontal({
    Key? key,
    required this.height,
    required this.category,
    required this.problem,
    required this.solution,
    required this.solutionfunction,
  }) : super(key: key);

  final double height;
  final String category;
  final bool problem;
  final bool solution;
  final bool solutionfunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: maincolor,
            spreadRadius: -0.5,
            offset: Offset(-3, 0),
          ),
        ],
        color: lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Abcd Poll',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: maincolor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:
                        SvgPicture.asset('assets/images/calendar-days-red.svg'),
                  ),
                  Text(
                    '28.10.23 - 30.10.23',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset('assets/images/map.svg'),
                  ),
                  Text(
                    'USA',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset('assets/images/users-purple.svg'),
                  ),
                  Text(
                    '500',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: maincolor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: SvgPicture.asset('assets/images/eye.svg'),
                  ),
                  Text(
                    category,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
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
    );
  }
}
