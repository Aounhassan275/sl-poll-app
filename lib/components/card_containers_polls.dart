import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class CardContainersPolls extends StatelessWidget {
  CardContainersPolls({
    super.key,
    required this.hading,
    required this.subhading,
    required this.calendarimg,
    required this.mapimg,
    required this.calendartext,
    required this.maptext,
    required this.showContainer1,
    required this.showContainer2,
    required this.showContainer3,
    required this.containertext1,
    required this.containertext2,
    required this.containertext3,
  });
  final String hading;
  final String subhading;
  final String calendarimg;
  final String mapimg;
  final String calendartext;
  final String maptext;
  final String containertext1;
  final String containertext2;
  final String containertext3;
  bool showContainer1 = true;
  bool showContainer2 = true;
  bool showContainer3 = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: maincolor,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
         height: MediaQuery.of(context).size.height * 0.80,
        
        // width: MediaQuery.of(context).size.width * 0.43,
        margin: EdgeInsets.only(left: 2),
        padding: EdgeInsets.only(right: 10, left: 10, top: 15),
        decoration: BoxDecoration(
          color: cardbackColor,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(hading,
                    style: TextStyle(
                      color: maincolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            
            Padding(
              padding:  EdgeInsets.only(top: 5,bottom: 3),
              child: Row(
                children: [
                  SvgPicture.asset(calendarimg),
                  Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(calendartext,
                        style: TextStyle(
                          color: maincolor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 2,),
            Row(
              children: [
                SvgPicture.asset(mapimg),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(maptext,
                      style: TextStyle(
                        color: maincolor,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      )),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 5,bottom: 5),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/users.svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text("500",
                        style: TextStyle(
                          color: maincolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  SvgPicture.asset('assets/images/eyeoff.svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Private',
                        style: TextStyle(
                            color: maincolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Text(subhading,
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Visibility(
                  visible: showContainer1,
                  child: Container(
                      margin: EdgeInsets.only(right: 6),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(containertext1,
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
                        child: Text(containertext2,
                            style: TextStyle(
                              color: white,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            )),
                      )),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 5),
              child: Row(
                children: [
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
                          child: Text(containertext3,
                              style: TextStyle(
                                color: white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              )),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 5),
              child: Row(
                children: [
                  Text("Status:",
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("On Going",
                      style: TextStyle(
                        color: maincolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            Row(
              children: [
                Text("Voted:",
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )),
                Text("200/500",
                    style: TextStyle(
                      color: maincolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Text("Day Remaining:",
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  Text("200",
                      style: TextStyle(
                        color: maincolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
