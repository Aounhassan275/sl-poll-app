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
    
      // required this.img5second,
      // required this.img2second,
      // required this.img3second,
      // required this.img6second,
      // required this.screenName,
      // required this.showimg6,
      // required this.showimg7,
      // required this.showimg2second,
      // required this.showimg3second,
      // required this.showimg6second,
      // required this.showimg5second,
      this.mycolor});
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  final String img7;

  // bool showimg6 = true;
  // bool showimg7 = true;
  // bool showimg2second = true;
  // bool showimg3second = true;
  // bool showimg6second = true;
  // bool showimg5second = true;

  // final String img5second;
  // final String img2second;
  // final String img3second;
  // final String img6second;
  final mycolor;

  // final String screenName;

  @override
  State<Topcontainer> createState() => _TopcontainerState();
}

enum Categories {
  body_Building,
  medical_Fitness,
  // Add other categories here
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
  // Add other language options as needed
}

class _TopcontainerState extends State<Topcontainer> {
  // int _navigationMenuIndex = 0;
  // int i = 0;
  Gender gender = Gender.male;
  Categories category = Categories.body_Building;
  Languages lang = Languages.English;

  bool isChecked = false;
  String _selectedFilter = 'Default';
  int _selectedIndex = 0;
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

  bool isProblemSelected = false;
  bool isProblemSelectedd = false;
  bool isAutomaticEnterSelected = false;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  // padding: EdgeInsets.only(top: 20,bottom: 10),
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
                                //isProblemSelectedd = !isProblemSelectedd;
                                // _navigationMenuIndex = 0;
                                _onItemTapped(0);
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 6),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: _selectedIndex == 0
                                        ? maincolor
                                        : grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(5)),
                                child: GestureDetector(
                                  onTap: () {
                                    _onItemTapped(0);
                                  },
                                  child: SvgPicture.asset(
                                    _selectedIndex == 0
                                        ? 'assets/images/listfilterwhite.svg'
                                        : 'assets/images/listfilter.svg',
                                    // widget.img1,
                                    fit: BoxFit.none,
                                  ),
                                )),
                          ),

                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // isProblemSelected = !isProblemSelected;
                                //  _navigationMenuIndex = 1;
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
                                      // isProblemSelected = !isProblemSelected;
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
                          //  ),
                          // widget.screenName == 'ResultView'
                          //     ?
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
                          // : Text(''),
                          // widget.img2second != ''
                          //     ? Visibility(
                          //         visible: widget.showimg2second,
                          //         child: Container(
                          //             height: 30,
                          //             width: 30,
                          //             margin: EdgeInsets.only(right: 6),
                          //             decoration: BoxDecoration(
                          //                 color: grey.withOpacity(0.2),
                          //                 borderRadius: BorderRadius.circular(5)),
                          //             child: SvgPicture.asset(
                          //               widget.img2second,
                          //               fit: BoxFit.none,
                          //             )),
                          //       )
                          //     : Text(''),
                          // widget.screenName == 'ResultView'
                          //     ?
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
                          // : Text(''),
                          // widget.img3second != ''
                          //     ? Visibility(
                          //         visible: widget.showimg3second,
                          //         child: Container(
                          //             height: 30,
                          //             width: 30,
                          //             margin: EdgeInsets.only(right: 6),
                          //             decoration: BoxDecoration(
                          //                 color: grey.withOpacity(0.2),
                          //                 borderRadius: BorderRadius.circular(5)),
                          //             child: SvgPicture.asset(
                          //               widget.img3second,
                          //               fit: BoxFit.none,
                          //             )),
                          //       )
                          //     : Text(''),
                          // widget.img4 != ''
                          //     ?
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
                          // : Text(''),
                          // widget.screenName == 'ResultView'
                          //     ?
                          ///////////////////////////////////////////////////////////////////////////////Search///////////////////////////////
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                //isProblemSelectedd = !isProblemSelectedd;
                                // _navigationMenuIndex = 0;
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
                                    // widget.img1,
                                    fit: BoxFit.none,
                                  ),
                                )),
                          ),

                          // ? 'assets/images/Searchs.svg'
                          // : 'assets/images/Searchwhite.svg'
                          // : Text(''),
                          // widget.img5second != ''
                          //     ? Visibility(
                          //         visible: widget.showimg5second,
                          //         child: Container(
                          //             height: 32,
                          //             width: 32,
                          //             margin: EdgeInsets.only(right: 6),
                          //             decoration: BoxDecoration(
                          //                 color: maincolor,
                          //                 borderRadius: BorderRadius.circular(5)),
                          //             child: SvgPicture.asset(
                          //               widget.img5second,
                          //               fit: BoxFit.none,
                          //             )),
                          //       )
                          //     : Text(''),
                        ],
                      ),
                      // widget.screenName == 'ResultView'
                      //     ? Visibility(
                      //         visible: widget.showimg6,
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // _navigationMenuIndex = 2;
                          });
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
                      // )
                      // : Text(''),
                      // widget.img6second != ''
                      //     ? Visibility(
                      //         visible: widget.showimg6second,
                      //         child: GestureDetector(
                      //           onTap: () {
                      //             setState(() {
                      //               _navigationMenuIndex = 2;
                      //             });
                      //           },
                      //           child: Container(
                      //               height: 30,
                      //               width: 30,
                      //               margin: EdgeInsets.only(left: 20),
                      //               decoration: BoxDecoration(
                      //                   borderRadius: BorderRadius.circular(5)),
                      //               child: SvgPicture.asset(
                      //                 widget.img6second,
                      //                 fit: BoxFit.none,
                      //               )),
                      //         ),
                      //       )
                      //     : Text(''),
                      // _fragments[],

                      //  _navigationMenuIndex == 0?

                      /// if(_navigationMenuIndex == 1)w
                      ///
                      ///// polls view brows

                      // Scaffold(
                      // backgroundColor: white,
                      // body: SafeArea(
                    ],
                  ),
                ),
              ),
              _selectedIndex == 0
                  ?
                  // Positioned(
                  //   top: 65,
                  //   left: 20,
                  // child: BackdropFilter(
                  //filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 6.0),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        //margin: EdgeInsets.only(right: 120),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: 200,
                          color: Colors.transparent,
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
                              /////////////////////////////////////////////////////////////////////////////////////////////
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
                                        ///////////////////////////checkbox///////////////////////////////
                                        Checkbox(
                                            side: BorderSide(
                                              color: isChecked
                                                  ? Colors.transparent
                                                  : maincolor, // Border color when unchecked
                                              width: isChecked ? 0 : 1,
                                            ),
                                            fillColor:
                                                MaterialStateProperty.all(
                                              isChecked
                                                  ? maincolor
                                                  : Colors
                                                      .transparent, // Fill color when checked
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                  // mainAxisAlignment: MainAxisAlignment.start,
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
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                  // mainAxisAlignment: MainAxisAlignment.start,
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                              ///////////////////////////checkbox///////////////////////////////
                                              Checkbox(
                                                  side: BorderSide(
                                                    color: isChecked
                                                        ? Colors.transparent
                                                        : maincolor, // Border color when unchecked
                                                    width: isChecked ? 0 : 1,
                                                  ),
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                    isChecked
                                                        ? maincolor
                                                        : Colors
                                                            .transparent, // Fill color when checked
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  }),
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
                                    Text("CANCEL",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Padding(
                                      padding:  EdgeInsets.only(right: 15,left: 15),
                                      child: VerticalDivider(
                                        color: Colors.grey.withOpacity(0.4),
                                        thickness: 2,
                                      ),
                                    ),
                                    Text("APPLY",
                                        style: TextStyle(
                                          color: maincolor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                              )


                              // Text(
                              //   'Categories',
                              //   style: TextStyle(
                              //       fontSize: 16,
                              //       fontWeight: FontWeight.w600,
                              //       color: white),
                              // ),
                              // Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: _buildCategoryButtons()),
                              // Text(
                              //   'Languages',
                              //   style: TextStyle(
                              //       fontSize: 16,
                              //       fontWeight: FontWeight.w600,
                              //       color: white),
                              // ),
                              // Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: _buildRadioButtons()),
                              // Text(
                              //   'Gender',
                              //   style: TextStyle(
                              //       fontSize: 16,
                              //       fontWeight: FontWeight.w600,
                              //       color: white),
                              // ),
                              // Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: _buildGenderButtons()),
                              // Align(
                              //   alignment: Alignment.centerRight,
                              //   child: GradientButton(
                              //     title: 'Search',
                              //     onPressed: () async {
                              //       controller.lang = lang;
                              //       controller.gender = gender;
                              //       controller.category = category;
                              //       controller.filterTrainers('');
                              //       controller.toggleShow();
                              //     },
                              //     selected: true,
                              //     buttonwidth: 0.3,
                              //     buttonHeight: 40.0,
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ),
                    )
                

                  : _selectedIndex == 1
                      ? Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            children: [
                              // Topcontainer(
                             
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
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
                                  onToggle: (index) {
                                    // setState(() {
                                    //  // i = index!;
                                    // });
                                  },
                                ),
                              ),
                              GridView.builder(
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
                                  })
                            ],
                          ),
                        )
                      : _selectedIndex == 2
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.85,
                              // padding:
                              //     EdgeInsets.only( left: 15, right: 15),
                              child: Column(
                                children: [
                                  // Topcontainer(
                                
                                  Container(
                                    // height: 70,
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
                                          // floatingLabelStyle: const TextStyle(
                                          //     height: 4, color: Color.fromARGB(255, 160, 26, 179)),
                                          filled: true,
                                          //fillColor: Colors.grey[200],
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
                                      onToggle: (index) {
                                        // setState(() {
                                        //  // i = index!;
                                        // });
                                      },
                                    ),
                                  ),
                                  ////////////////////////////////////////
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
        ),
      ),
    );
  }

  // List<Widget> _buildRadioButtons() {
  //   List<Widget> radioButtons = [];
  //   for (Languages option in Languages.values) {
  //     radioButtons.add(
  //       SizedBox(
  //         height: 30,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Transform.scale(
  //                 scale: 1.0,
  //                 child: Radio(
  //                   value: option,
  //                   groupValue: lang,
  //                   fillColor:
  //                       MaterialStateColor.resolveWith((states) => borderDown),
  //                   onChanged: (value) {
  //                     setState(() {
  //                       lang = value!;
  //                     });
  //                   },
  //                 )),
  //             Text(
  //               option.toString().split('.').last,
  //               style: TextStyle(
  //                   fontFamily: "Poppins",
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w500,
  //                   color: white),
  //             ),
  //             Text(
  //               '',
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return radioButtons;
  // }

  // List<Widget> _buildGenderButtons() {
  //   List<Widget> radioButtons = [];
  //   for (Gender option in Gender.values) {
  //     radioButtons.add(
  //       SizedBox(
  //         height: 30,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Transform.scale(
  //                 scale: 1.0,
  //                 child: Radio(
  //                   value: option,
  //                   groupValue: gender,
  //                   fillColor:
  //                       MaterialStateColor.resolveWith((states) => borderDown),
  //                   onChanged: (value) {
  //                     setState(() {
  //                       gender = value!;
  //                     });
  //                   },
  //                 )),
  //             Text(
  //               option.toString().split('.').last,
  //               style: TextStyle(
  //                   fontFamily: "Poppins",
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w500,
  //                   color: white),
  //             ),
  //             Text(
  //               '',
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return radioButtons;
  // }

  // List<Widget> _buildCategoryButtons() {
  //   List<Widget> radioButtons = [];
  //   for (Categories option in Categories.values) {
  //     radioButtons.add(
  //       SizedBox(
  //         height: 30,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Transform.scale(
  //                 scale: 1.0,
  //                 child: Radio(
  //                   value: option,
  //                   groupValue: category,
  //                   fillColor:
  //                       MaterialStateColor.resolveWith((states) => borderDown),
  //                   onChanged: (value) {
  //                     setState(() {
  //                       category = value!;
  //                     });
  //                   },
  //                 )),
  //             Text(
  //               option.toString().split('.').last == 'body_Building'
  //                   ? "Body Building"
  //                   : option.toString().split('.').last == 'medical_Fitness'
  //                       ? 'Medical Fitness'
  //                       : option.toString().split('.').last,
  //               style: TextStyle(
  //                   fontFamily: "Poppins",
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w500,
  //                   color: white),
  //             ),
  //             Text(
  //               '',
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return radioButtons;
  // }
}
