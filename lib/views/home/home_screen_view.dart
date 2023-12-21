// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_logic_poll/components/Abcd_poll_horizontal.dart';
import 'package:speak_logic_poll/components/Abcd_poll_vertical.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  bool listfilter = false;
  String selectedOption = '';

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
                          selectedOption = 'grid';
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
                          selectedOption = 'server';
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'maximize';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: selectedOption == 'maximize'
                                ? maincolor
                                : white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            selectedOption == 'maximize'
                                ? 'assets/images/maximizeblue.svg'
                                : 'assets/images/maximize_white.svg',
                            fit: BoxFit.scaleDown,
                            color: selectedOption == 'maximize'
                                ? white
                                : maincolor,
                          ),
                        ),
                      ),
                    ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AbcdPollHorizontal(
                          height: MediaQuery.of(context).size.width * 0.57,
                          category: 'Public',
                          problem: true,
                          solution: false,
                          solutionfunction: false,
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: AbcdPollVertical(
                      problem: false,
                      solution: true,
                      solutionfunction: false,
                    ),
                  ),
                  AbcdPollVertical(
                    problem: true,
                    solution: true,
                    solutionfunction: true,
                  ),
                  AbcdPollVertical(
                    problem: true,
                    solution: true,
                    solutionfunction: false,
                  ),
                  AbcdPollVertical(
                    problem: true,
                    solution: true,
                    solutionfunction: true,
                  ),
                  AbcdPollVertical(
                    problem: false,
                    solution: true,
                    solutionfunction: true,
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
