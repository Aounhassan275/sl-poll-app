import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/components/card_abcd_polls.dart';
import 'package:speak_logic_poll/components/card_containers_polls.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view_browse.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Topcontainer extends StatefulWidget {
  Topcontainer(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.img4,
      required this.img5,
      required this.img6,
      required this.img7,
      this.mycolor});
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  final String img7;

  final mycolor;

  @override
  State<Topcontainer> createState() => _TopcontainerState();
}

enum Categories {
  body_Building,
  medical_Fitness,
}

enum Gender {
  male,
  female,
  other,
}

enum Languages {
  English,
  Spanish,
  French,
  German,
}

class _TopcontainerState extends State<Topcontainer> {
  // int _navigationMenuIndex = 0;
  // int i = 0;

  Gender gender = Gender.male;
  Categories category = Categories.body_Building;
  Languages lang = Languages.English;

  bool isChecked = false;
  String _selectedFilter = 'Default';
  int _selectedIndex = 1;
  bool isShow = false;
  static const List<Widget> _widgetOptions = <Widget>[
    PollsView(),
    PollsViewBrowse(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('object');
      print(_selectedIndex);
    });
  }

  bool isSelected = false;

  bool isProblemSelected = false;
  bool isProblemSelectedd = false;
  bool isAutomaticEnterSelected = false;

  bool isCheckedToday = true;
  bool isCheckedFromEvent = false;
  bool isCheckedStraight = false;

  bool isActive = false;
  bool isVote = false;
  bool isNo = false;
  bool isYes = false;
  bool isEndSoon = false;
  bool isCompleted = false;

  bool isProblemChecked = false;
  bool isSolutionChecked = false;
  bool isSolutionFunctionChecked = false;

  bool isApply = false;
  bool isShowThis = false;
  List<int> _selectedIndexList = [];
  @override
  Widget build(BuildContext context) {
    // var _fragments = [
    //   const PollsView(),
    //   const PollsViewBrowse(),
    //   // const HomeScreen(),
    //   // const OrderScreen(),
    //   // const SettingScreen(),
    // ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
            top: 20,
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      color: white,
                      margin: EdgeInsets.only(right: 6, bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isShow = !isShow;
                                  });
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: isShow == true
                                            ? maincolor
                                            : grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isShow = !isShow;
                                        });
                                      },
                                      child: SvgPicture.asset(
                                        isShow == true
                                            ? 'assets/images/listfilterwhite.svg'
                                            : 'assets/images/listfilter.svg',
                                        fit: BoxFit.none,
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _onItemTapped(1);
                                  });
                                },
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    margin: EdgeInsets.only(right: 6),
                                    decoration: BoxDecoration(
                                        color: _selectedIndex == 1
                                            ? maincolor
                                            : grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _onItemTapped(1);
                                        });
                                      },
                                      child: SvgPicture.asset(
                                        _selectedIndex == 1
                                            ? 'assets/images/gridwhite.svg'
                                            : 'assets/images/grid.svg',
                                        fit: BoxFit.none,
                                      ),
                                    )),
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.only(right: 6),
                                  decoration: BoxDecoration(
                                      color: grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    widget.img2,
                                    fit: BoxFit.none,
                                  )),
                              Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.only(right: 6),
                                  decoration: BoxDecoration(
                                      color: grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    widget.img3,
                                    fit: BoxFit.none,
                                  )),
                              Container(
                                  height: 30,
                                  width: 30,
                                  margin: EdgeInsets.only(right: 6),
                                  decoration: BoxDecoration(
                                      color: grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: SvgPicture.asset(
                                    widget.img4,
                                    fit: BoxFit.none,
                                  )),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _onItemTapped(2);
                                  });
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: _selectedIndex == 2
                                            ? maincolor
                                            : grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onItemTapped(2);
                                      },
                                      child: SvgPicture.asset(
                                        _selectedIndex == 2
                                            ? 'assets/images/Searchwhite.svg'
                                            : 'assets/images/Searchs.svg',
                                        fit: BoxFit.none,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                                height: 30,
                                width: 30,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: SvgPicture.asset(
                                  widget.img6,
                                  fit: BoxFit.none,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _selectedIndex == 1
                      ? Container(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Column(
                            children: [
                              Visibility(
                                visible: isApply,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.25,
                                            decoration: BoxDecoration(
                                                color: grey.withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Period:",
                                                    style: TextStyle(
                                                      color: maincolor,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    )),
                                                Text("Today",
                                                    style: TextStyle(
                                                      color: maincolor,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 50),
                                            child: Visibility(
                                              visible: isCheckedFromEvent ||
                                                  isCheckedStraight,
                                              child: Container(
                                                height: 30,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                decoration: BoxDecoration(
                                                    color:
                                                        grey.withOpacity(0.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Visibility(
                                                      visible:
                                                          isCheckedFromEvent,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text("Created:",
                                                              style: TextStyle(
                                                                color:
                                                                    maincolor,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                          Text("From Event",
                                                              style: TextStyle(
                                                                color:
                                                                    maincolor,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          isCheckedStraight,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text("Created:",
                                                              style: TextStyle(
                                                                color:
                                                                    maincolor,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              )),
                                                          Text("Straight",
                                                              style: TextStyle(
                                                                color:
                                                                    maincolor,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isShow = false;
                                                isApply = false;
                                              });
                                            },
                                            child: SvgPicture.asset(
                                                'assets/images/clear_img_button.svg'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Visibility(
                                            visible: isActive ||
                                                isVote ||
                                                isNo ||
                                                isYes ||
                                                isEndSoon ||
                                                isCompleted,
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                              decoration: BoxDecoration(
                                                  color: grey.withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Visibility(
                                                    visible: isActive,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Most Active",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isVote,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Most Vote",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isNo,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Most No",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isYes,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Most Yes",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isEndSoon,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("End Soon",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isCompleted,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Activity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Completed",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: isProblemChecked ||
                                                isSolutionChecked ||
                                                isSolutionFunctionChecked,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                left: 10,
                                              ),
                                              height: 30,
                                              width: isProblemChecked ||
                                                      isSolutionChecked
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.35
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.42,
                                              decoration: BoxDecoration(
                                                  color: grey.withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Visibility(
                                                    visible: isProblemChecked,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Entity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Problem",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: isSolutionChecked,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Entity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text("Solution",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible:
                                                        isSolutionFunctionChecked,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Entity:",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            )),
                                                        Text(
                                                            "Solution Function",
                                                            style: TextStyle(
                                                              color: maincolor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                ),
                                child: ToggleSwitch(
                                  minWidth: MediaQuery.of(context).size.width,
                                  minHeight:
                                      MediaQuery.of(context).size.height * 0.08,
                                  fontSize: 16.0,
                                  cornerRadius: 12.0,
                                  activeBgColor: [Colors.blue[900]!],
                                  activeFgColor: white,
                                  inactiveFgColor: white,
                                  inactiveBgColor: maincolor,
                                  activeBorders: [
                                    Border.all(
                                      color: maincolor,
                                      width: 3.0,
                                    ),
                                  ],
                                  initialLabelIndex: 0,
                                  totalSwitches: 2,
                                  labels: [
                                    'All Polls',
                                    'My Polls',
                                  ],
                                  onToggle: (index) {},
                                ),
                              ),
                              
                                 _selectedIndexList.isNotEmpty?
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(bottom: 8),
                                    height: 40,
                                    child: ElevatedButton(
                                      child: Text(
                                        "Request Invitation",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: white),
                                      ),
                                      onPressed: () {
                                        
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            buttonRequestInvitationColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0),
                                        ),
                                      ),
                                    ),
                                  ):Container(),
                              
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // isCheckedToday = true;
                                  });
                                },
                                child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: 260,
                                    ),
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    itemBuilder: (BuildContext context, index) {
                                      return CardContainersPolls(
                                          value:
                                              _selectedIndexList.contains(index)
                                                  ? true
                                                  : false,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              // isCheckedToday = value ?? false;
                                              if (_selectedIndexList
                                                  .contains(index)) {
                                                _selectedIndexList
                                                    .remove(index);
                                              } else {
                                                _selectedIndexList.add(index);
                                              }
                                            });
                                          },
                                          hading: 'Abcd Poll',
                                          subhading: 'Entity in Question:',
                                          calendarimg:
                                              'assets/images/calendar.svg',
                                          mapimg: 'assets/images/map.svg',
                                          calendartext: '28.10.23 - 30.10.23',
                                          maptext: 'USA',
                                          showContainer1: true,
                                          showContainer2: true,
                                          showContainer3: true,
                                          containertext1: 'Problem',
                                          containertext2: 'Solution',
                                          containertext3: 'Solution Function');
                                    }),
                              )
                            ],
                          ),
                        )
                      : _selectedIndex == 2
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.85,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Form(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText:
                                              "Type poll name or/and location",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          filled: true,
                                          fillColor:
                                              Colors.grey.withOpacity(0.1),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: ToggleSwitch(
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      minHeight:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      fontSize: 16.0,
                                      cornerRadius: 12.0,
                                      activeBgColor: [Colors.blue[900]!],
                                      activeFgColor: white,
                                      inactiveFgColor: white,
                                      inactiveBgColor: maincolor,
                                      activeBorders: [
                                        Border.all(
                                          color: maincolor,
                                          width: 3.0,
                                        ),
                                      ],
                                      initialLabelIndex: 0,
                                      totalSwitches: 2,
                                      labels: [
                                        'All Polls',
                                        'My Polls',
                                      ],
                                      onToggle: (index) {},
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("A",
                                                    style: TextStyle(
                                                      color: maincolor,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ))
                                              ],
                                            ),
                                            Divider(
                                              height: 2,
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              thickness: 2,
                                            ),
                                            CardAbcdPollls(
                                                showContainer1: true,
                                                showContainer2: true,
                                                showContainer3: true),
                                            Divider(
                                              height: 2,
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              thickness: 2,
                                            ),
                                            CardAbcdPollls(
                                              showContainer1: true,
                                              showContainer2: true,
                                              showContainer3: false,
                                            ),
                                            Row(
                                              children: [
                                                Text("B",
                                                    style: TextStyle(
                                                      color: maincolor,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ))
                                              ],
                                            ),
                                            Divider(
                                              height: 2,
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              thickness: 2,
                                            ),
                                            CardAbcdPollls(
                                                showContainer1: true,
                                                showContainer2: true,
                                                showContainer3: true),
                                            Divider(
                                              height: 2,
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              thickness: 2,
                                            ),
                                            CardAbcdPollls(
                                                showContainer1: true,
                                                showContainer2: true,
                                                showContainer3: false),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Container(),
                ],
              ),
              isShow == true
                  ? Container(
                    child: Positioned(
                        top: 40,
                        left: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            width: 200,
                            color: const Color(0x00000000),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Filter",
                                    style: TextStyle(
                                        color: maincolor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                Divider(
                                  height: 8,
                                  color: Colors.grey.withOpacity(0.1),
                                  thickness: 2,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Period",
                                        style: TextStyle(
                                          color: filtertextcolor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Container(
                                      height: 30,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Checkbox(
                                            value: isCheckedToday,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isCheckedToday = value ?? false;
                                              });
                                            },
                                            side: BorderSide(
                                              color: isCheckedToday
                                                  ? Colors.transparent
                                                  : maincolor, // Border color when unchecked
                                              width: isCheckedToday ? 0 : 1,
                                            ),
                                            fillColor: MaterialStateProperty.all(
                                              isCheckedToday
                                                  ? maincolor
                                                  : Colors
                                                      .transparent, // Fill color when checked
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          Text(
                                            'Today',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: maincolor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Poll Created",
                                        style: TextStyle(
                                          color: filtertextcolor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isCheckedFromEvent,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isCheckedFromEvent =
                                                          value ?? false;
                                                      if (isCheckedFromEvent) {
                                                        isCheckedStraight = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isCheckedFromEvent
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isCheckedFromEvent
                                                        ? 0
                                                        : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isCheckedFromEvent
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'From Event',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 14,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isCheckedStraight,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isCheckedStraight =
                                                          value ?? false;
                                                      if (isCheckedStraight) {
                                                        isCheckedFromEvent =
                                                            false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isCheckedStraight
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width:
                                                        isCheckedStraight ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isCheckedStraight
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Straight',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Activity",
                                        style: TextStyle(
                                          color: filtertextcolor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ///////////////////////////checkbox///////////////////////////////
                                                Checkbox(
                                                  value: isActive,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isActive = value ?? false;
                                                      if (isActive) {
                                                        isVote = false;
                                                        isNo = false;
                                                        isYes = false;
                                                        isEndSoon = false;
                                                        isCompleted = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isActive
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isActive ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isActive
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Most Active',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isVote,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isVote = value ?? false;
                                                      if (isVote) {
                                                        isActive = false;
                                                        isNo = false;
                                                        isYes = false;
                                                        isEndSoon = false;
                                                        isCompleted = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isVote
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isVote ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isVote
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Most Vote',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isNo,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isNo = value ?? false;
                                                      if (isNo) {
                                                        isActive = false;
                                                        isVote = false;
                                                        isYes = false;
                                                        isEndSoon = false;
                                                        isCompleted = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isNo
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isNo ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isNo
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Most No',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isYes,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isYes = value ?? false;
                                                      if (isYes) {
                                                        isActive = false;
                                                        isVote = false;
                                                        isNo = false;
                                                        isEndSoon = false;
                                                        isCompleted = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isYes
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isYes ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isYes
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Most Yes',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isEndSoon,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isEndSoon = value ?? false;
                                                      if (isEndSoon) {
                                                        isActive = false;
                                                        isVote = false;
                                                        isNo = false;
                                                        isYes = false;
                                                        isCompleted = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isEndSoon
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isEndSoon ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isEndSoon
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'End Soon',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isCompleted,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isCompleted =
                                                          value ?? false;
                                                      if (isCompleted) {
                                                        isActive = false;
                                                        isVote = false;
                                                        isNo = false;
                                                        isYes = false;
                                                        isEndSoon = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isCompleted
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isCompleted ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isCompleted
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Completed',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Entity in Question:",
                                        style: TextStyle(
                                          color: filtertextcolor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isProblemChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isProblemChecked =
                                                          value ?? false;
                                                      if (isProblemChecked) {
                                                        isSolutionChecked = false;
                                                        isSolutionFunctionChecked =
                                                            false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isProblemChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width:
                                                        isProblemChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isProblemChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Problem',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value: isSolutionChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isSolutionChecked =
                                                          value ?? false;
                                                      if (isSolutionChecked) {
                                                        isProblemChecked = false;
                                                        isSolutionFunctionChecked =
                                                            false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color: isSolutionChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width:
                                                        isSolutionChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isSolutionChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Solution',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Checkbox(
                                                  value:
                                                      isSolutionFunctionChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isSolutionFunctionChecked =
                                                          value ?? false;
                                                      if (isSolutionFunctionChecked) {
                                                        isProblemChecked = false;
                                                        isSolutionChecked = false;
                                                      }
                                                    });
                                                  },
                                                  side: BorderSide(
                                                    color:
                                                        isSolutionFunctionChecked
                                                            ? Colors.transparent
                                                            : maincolor,
                                                    width:
                                                        isSolutionFunctionChecked
                                                            ? 0
                                                            : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isSolutionFunctionChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                                Text(
                                                  'Solution Function',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: maincolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 8,
                                  color: Colors.grey.withOpacity(0.1),
                                  thickness: 2,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isApply = false;
                                            isShow = false;
                                          });
                                        },
                                        child: Text("CANCEL",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(right: 15, left: 15),
                                        child: VerticalDivider(
                                          color: Colors.grey.withOpacity(0.4),
                                          thickness: 2,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isApply = true;
                                          });
                                        },
                                        child: Text("APPLY",
                                            style: TextStyle(
                                              color: maincolor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
