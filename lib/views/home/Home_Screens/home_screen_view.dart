// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_logic_poll/components/Abcd_poll_horizontal.dart';
import 'package:speak_logic_poll/components/Abcd_poll_vertical.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode1/read_mode_view1.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  bool listfilter = false;
  String selectedOption = 'grid';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          listfilter = !listfilter;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: listfilter ? maincolor : white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SvgPicture.asset(
                          listfilter
                              ? 'assets/images/list-filter-blue.svg'
                              : 'assets/images/listfilter.svg',
                          fit: BoxFit.scaleDown,
                          color: listfilter ? white : maincolor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption =
                              'grid'; // Set the selected option to 'grid'
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: selectedOption == 'grid' ? maincolor : white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            selectedOption == 'grid'
                                ? 'assets/images/gridwhite.svg'
                                : 'assets/images/grid_blue.svg',
                            fit: BoxFit.scaleDown,
                            color: selectedOption == 'grid' ? white : maincolor,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption =
                              'server'; // Set the selected option to 'server'
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:
                                selectedOption == 'server' ? maincolor : white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            selectedOption == 'server'
                                ? 'assets/images/server_white.svg'
                                : 'assets/images/server_blue.svg',
                            fit: BoxFit.scaleDown,
                            color:
                                selectedOption == 'server' ? white : maincolor,
                          ),
                        ),
                      ),
                    ),
                    //   GestureDetector(
                    //     onTap: () {
                    //       setState(() {
                    //         selectedOption =
                    //             'maximize'; // Set the selected option to 'maximize'
                    //       });
                    //     },
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(left: 8),
                    //       child: Container(
                    //         height: 40,
                    //         width: 40,
                    //         decoration: BoxDecoration(
                    //           color: selectedOption == 'maximize'
                    //               ? maincolor
                    //               : white,
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //         child: SvgPicture.asset(
                    //           selectedOption == 'maximize'
                    //               ? 'assets/images/maximizeblue.svg'
                    //               : 'assets/images/maximize_white.svg',
                    //           fit: BoxFit.scaleDown,
                    //           color: selectedOption == 'maximize'
                    //               ? white
                    //               : maincolor,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ),
          ],
          leading: Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: SvgPicture.asset(
                'assets/images/menu_blue.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(child: DrawerScreenView()),
        backgroundColor: Colors.white,
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Visibility(
                      visible: selectedOption == 'grid',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  backgroundColor: white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  content: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.99,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 6),
                                                      child: SvgPicture.asset(
                                                          'assets/images/calendar-days-red.svg'),
                                                    ),
                                                    Text(
                                                      '28.10.23 - 30.10.23',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: maincolor),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6),
                                              child: SvgPicture.asset(
                                                  'assets/images/map-pin.svg'),
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
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/users-purple.svg'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
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
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: SvgPicture.asset(
                                                  'assets/images/eyeoff.svg'),
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
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Entity in Question:',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: textcolor,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 5),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: pinkColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 5,
                                                                bottom: 5,
                                                                left: 10,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                'Problem',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white,
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
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12),
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Is ',
                                                        style: TextStyle(
                                                          color: maincolor,
                                                          fontSize: 15,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dirty Oil ',
                                                        style: TextStyle(
                                                          color: pinkColor,
                                                          fontSize: 15,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'properly identified as',
                                                        style: TextStyle(
                                                          color: maincolor,
                                                          fontSize: 15,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 4),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Dirty Oil Problem',
                                                        style: TextStyle(
                                                          color: pinkColor,
                                                          fontSize: 15,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        ' ?',
                                                        style: TextStyle(
                                                          color: maincolor,
                                                          fontSize: 15,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
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
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: purple1,
                                        ),
                                        padding: const EdgeInsets.all(14),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReadModeView1()),
                                            );
                                          },
                                          child: Center(
                                            child: Text(
                                              'Vote',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: AbcdPollHorizontal(
                              height: MediaQuery.of(context).size.width * 0.57,
                              category: 'Public',
                              problem: true,
                              solution: false,
                              solutionfunction: false,
                            ),
                          ),
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.57,
                            category: 'Private',
                            problem: true,
                            solution: true,
                            solutionfunction: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Visibility(
                      visible: selectedOption == 'grid',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.475,
                            category: 'Public',
                            problem: true,
                            solution: true,
                            solutionfunction: false,
                          ),
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.475,
                            category: 'Private',
                            problem: false,
                            solution: true,
                            solutionfunction: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Visibility(
                      visible: selectedOption == 'grid',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.57,
                            category: 'Public',
                            problem: false,
                            solution: true,
                            solutionfunction: false,
                          ),
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.57,
                            category: 'Private',
                            problem: true,
                            solution: true,
                            solutionfunction: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Visibility(
                      visible: selectedOption == 'grid',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.475,
                            category: 'Public',
                            problem: true,
                            solution: false,
                            solutionfunction: false,
                          ),
                          AbcdPollHorizontal(
                            height: MediaQuery.of(context).size.width * 0.475,
                            category: 'Private',
                            problem: false,
                            solution: true,
                            solutionfunction: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Visibility(
                      visible: selectedOption == 'server',
                      child: AbcdPollVertical(
                        problem: false,
                        solution: true,
                        solutionfunction: false,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'server',
                    child: AbcdPollVertical(
                      problem: true,
                      solution: true,
                      solutionfunction: true,
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'server',
                    child: AbcdPollVertical(
                      problem: true,
                      solution: true,
                      solutionfunction: false,
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'server',
                    child: AbcdPollVertical(
                      problem: true,
                      solution: true,
                      solutionfunction: true,
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'server',
                    child: AbcdPollVertical(
                      problem: false,
                      solution: true,
                      solutionfunction: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
