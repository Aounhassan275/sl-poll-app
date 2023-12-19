import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class CardAbcdPollls extends StatelessWidget {
   CardAbcdPollls({super.key,required this.showContainer1,
    required this.showContainer2,
    required this.showContainer3,});

  bool showContainer1 = true;
  bool showContainer2 = true;
  bool showContainer3 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/images/scrolltext.svg'),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Text("Abcd Poll",
                    style: TextStyle(
                      color: maincolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 29, top: 5),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/calendar.svg',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text("28.10.23 - 30.10.23",
                      style: TextStyle(
                        color: maincolor,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: SvgPicture.asset(
                    'assets/images/map.svg',
                  ),
                ),
                Text("USA",
                    style: TextStyle(
                      color: maincolor,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29, top: 7),
            child: Row(
              children: [
                Visibility(
                  visible: showContainer1,
                  child: Container(
                      margin: EdgeInsets.only(right: 6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text('Problem',
                          style: TextStyle(
                            color: white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                Visibility(
                  visible: showContainer2,
                  child: Container(
                      margin: EdgeInsets.only(right: 6),
                      padding: EdgeInsets.all(6),
                      // height: MediaQuery.of(context).size.height * 0.04,
                      // width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                          color: buttonColors2,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text('Solution"',
                            style: TextStyle(
                              color: white,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            )),
                      )),
                ),
                Visibility(
                  visible: showContainer3,
                  child: Container(
                      margin: EdgeInsets.only(right: 6),
                      padding: EdgeInsets.all(6),
                      // height: MediaQuery.of(context).size.height * 0.04,
                      // width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          color: buttonColors3,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text('Solution Function',
                            style: TextStyle(
                              color: white,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            )),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
