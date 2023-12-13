import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CardContainers extends StatelessWidget {
  CardContainers({
    super.key,
    required this.hading,
    required this.subhading,
    required this.calendarimg,
    required this.mapimg,
    required this.calendartext,
    required this.maptext,
    required this.containertext1,
    required this.containertext2,
    required this.containertext3,
    required this.containertext4,
    required this.containertext5,
    required this.votestext1,
    required this.votestext2,
    required this.votestext3,
    required this.eyeimg,
    required this.eyetext,
    required this.checkimg,
    required this.myvoteschecktext,
    required this.showContainer1,
    required this.showContainer2,
    required this.showContainer3,
    required this.showConainerCenter,
    required this.checkIconImg,
    required this.checkText,
    required this.checkVotes,
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
  final String votestext1;
  final String votestext2;
  final String votestext3;

  final String containertext4;
  final String containertext5;
  final String eyeimg;
  final String eyetext;
  final String checkimg;
  final String myvoteschecktext;

  final String checkVotes;

  bool showContainer1 = true;
  bool showContainer2 = true;
  bool showContainer3 = true;
  bool showConainerCenter = true;
  bool checkIconImg = true;
  bool checkText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: maincolor,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: showConainerCenter == true
            ? MediaQuery.of(context).size.height * 0.45
            : MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 2),
        decoration: BoxDecoration(
          color: cardbackColor,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(right: 10, left: 10, top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(hading,
                      style: TextStyle(
                          color: maincolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  Row(
                    children: [
                      SvgPicture.asset(calendarimg),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(calendartext,
                            style: TextStyle(
                              color: maincolor,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(mapimg),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(maptext,
                        style: TextStyle(
                          color: maincolor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Text(subhading,
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Row(
                  children: [
                    Visibility(
                      visible: showContainer1,
                      child: Container(
                          margin: EdgeInsets.only(right: 6),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(containertext1,
                                style: TextStyle(
                                  color: white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                )),
                          )),
                    ),
                    Visibility(
                      visible: showContainer2,
                      child: Container(
                          margin: EdgeInsets.only(right: 6),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.15,
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
                    Visibility(
                      visible: showContainer3,
                      child: Container(
                          margin: EdgeInsets.only(right: 6),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.30,
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

              Visibility(
                visible: showConainerCenter,
                child: Container(
                    margin: EdgeInsets.only(right: 6, bottom: 6),
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: whiteContainerColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(checkimg),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(myvoteschecktext,
                              // "My Vote: YES"
                              style: TextStyle(
                                color: maincolor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )),
                        )
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(votestext1,
                          style: TextStyle(
                            color: maincolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Text(votestext2,
                            style: TextStyle(
                              color: maincolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 3),
                        child: Text(votestext3,
                            style: TextStyle(
                              color: maincolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Text(votestext2,
                          style: TextStyle(
                            color: maincolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: ToggleSwitch(
                  customWidths: [199.0, 100.0, 100.0],
                  minHeight: MediaQuery.of(context).size.height * 0.05,
                  cornerRadius: 10.0,
                  activeBgColors: [
                    [buttonColors3],
                    [Colors.redAccent],
                    [Colors.blue]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  labels: ['YES,', 'NO'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ),
              // checkVotes == 'yes'
              //     ?
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      // height: MediaQuery.of(context).size.height*0.25,
                      height: 44,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                          border: Border(
                        left: BorderSide(
                          color: buttonColors3,
                          width: 2.0,
                        ),
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(containertext4,
                                style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text(containertext5,
                                style: TextStyle(
                                  color: maincolor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            checkVotes == 'yes'
                                //////////////////////////////////////show container visibilty hatani h aur false be krna
                                ? Row(
                                    children: [
                                      Visibility(
                                          visible: checkIconImg,
                                          child: SvgPicture.asset(checkimg)),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Visibility(
                                          visible: checkText,
                                          child: Text(myvoteschecktext,
                                              // "My Vote: YES"
                                              style: TextStyle(
                                                color: maincolor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      )
                                    ],
                                  )
                                : Text(''),
                          ],
                        ),
                      )),
                  Container(
                      height: 44,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                          border: Border(
                        left: BorderSide(
                          color: buttonColor,
                          width: 2.0,
                        ),
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(containertext4,
                                // "Problem Name"
                                style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text(containertext5,
                                // "identified properly"
                                style: TextStyle(
                                  color: maincolor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            checkVotes == 'no'
                                ? Row(
                                    children: [
                                      Visibility(
                                          visible: checkIconImg,
                                          child: SvgPicture.asset(checkimg)),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Visibility(
                                          visible: checkText,
                                          child: Text(myvoteschecktext,
                                              // "My Vote: YES"
                                              style: TextStyle(
                                                color: maincolor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      )
                                    ],
                                  )
                                : Text(''),
                          ],
                        ),
                      )),
                ],
              ),
              // : Text(''),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/users.svg'),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text("500",
                          style: TextStyle(
                            color: maincolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SvgPicture.asset(eyeimg),
                    Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Text(eyetext,
                          style: TextStyle(
                              color: maincolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                    ),
                    Text("Votes:",
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
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
