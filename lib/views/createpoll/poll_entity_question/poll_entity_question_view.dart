import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/utils/fontWeight.dart';
import 'package:speak_logic_poll/views/createpoll/create_poll_straight/create_poll_straight_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';

class PollEntityQuestionView extends StatefulWidget {
  const PollEntityQuestionView({Key? key}) : super(key: key);

  @override
  State<PollEntityQuestionView> createState() => _PollEntityQuestionViewState();
}

class _PollEntityQuestionViewState extends State<PollEntityQuestionView> {
  bool isAutomaticEnterSelected = false;
  bool isManualEnterSelected = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 40,
                width: 40,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreatePollStraightView()),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/images/left_arrow.svg',
                  ),
                ),
              ),
            ),
          ],
          leading: Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: SvgPicture.asset(
                'assets/images/menu.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(child: DrawerScreenView()),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/back.svg',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 25),
                            child: Container(
                              width: 220,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Poll Entity in Question',
                                      style: TextStyle(
                                        color: Color(0xFFF2F8FF),
                                        fontSize: 26,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 24, right: 45),
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: white, width: 2),
                              ),
                            ),
                            child: Text(
                              "Manual enter problem name, solution name, and solution function name or read them automatically from a project you have from Speak Logic Problem Solver or Speak Logic Challenge",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: w400,
                                color: grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: MediaQuery.of(context).size.height * 0.72,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 250, 250),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isManualEnterSelected = true;
                                    isAutomaticEnterSelected = false;
                                  });
                                  Get.toNamed(AppRoutes.manualenter1);
                                },
                                child: Container(
                                  width: 327,
                                  height: 80,
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                    right: 20,
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isManualEnterSelected
                                        ? maincolor
                                        : white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    child: Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF5742BB),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 15,
                                                    top: 15,
                                                    child: Container(
                                                      width: 29,
                                                      height: 30,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            child: Container(
                                                              width: 29,
                                                              height: 30,
                                                              child: Stack(
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    'assets/images/Palm of hand.svg',
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              'Manual Enter',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: isManualEnterSelected
                                                    ? white
                                                    : maincolor,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            SvgPicture.asset(
                                              isManualEnterSelected
                                                  ? 'assets/images/log-in-light.svg'
                                                  : 'assets/images/log-in-dark.svg',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isAutomaticEnterSelected = true;
                                  isManualEnterSelected = false;

                                  Get.toNamed(AppRoutes.manualenter2);
                                });
                              },
                              child: Container(
                                width: 327,
                                height: 80,
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 20,
                                  bottom: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: isAutomaticEnterSelected
                                      ? maincolor
                                      : white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFF5742BB),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 17,
                                                  top: 17,
                                                  child: Container(
                                                    width: 26,
                                                    height: 26,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          child: Container(
                                                            width: 25,
                                                            height: 26,
                                                            child: Stack(
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  'assets/images/Auto.svg',
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            'Automatic Enter',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: isAutomaticEnterSelected
                                                  ? white
                                                  : maincolor,
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 24,
                                      height: 24,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          SvgPicture.asset(
                                            isAutomaticEnterSelected
                                                ? 'assets/images/log-in-light.svg'
                                                : 'assets/images/log-in-dark.svg',
                                          ),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
