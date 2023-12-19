import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/manual_enter_container.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';

class ManualEnterView4 extends StatefulWidget {
  const ManualEnterView4({super.key});

  @override
  State<ManualEnterView4> createState() => _ManualEnterView4State();
}

class _ManualEnterView4State extends State<ManualEnterView4> {
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
                      child: SvgPicture.asset(
                        'assets/images/left_arrow.svg',
                      )),
                ),
              ],
              leading: Builder(
                  builder: (context) => InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: SvgPicture.asset(
                        'assets/images/menu.svg',
                        fit: BoxFit.scaleDown,
                      ))),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white)),
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
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 25),
                                    child: Container(
                                        child: Text.rich(TextSpan(children: [
                                      TextSpan(
                                          text: 'Manual Enter',
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 26,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600))
                                    ])))),
                              ])),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: MediaQuery.of(context).size.height * 0.72,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 250, 250, 250),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 145,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'STEP 1',
                                      style: TextStyle(
                                        color: Color(4282137660),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 145,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 14),
                                        child: ManualEnterContainer(
                                          text: 'Solution',
                                          color: purple1,
                                          bgcolor: maincolor,
                                          textcolor: white,
                                          bordercolor: purple1,
                                        ),
                                      ),
                                      ManualEnterContainer(
                                        text: 'Solution Function',
                                        textcolor: maincolor,
                                        bordercolor: grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 170),
                                child: MainButton(
                                  title: 'Next Step',
                                  color: pinkColor,
                                  color1: white,
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.manualenter2);
                                  },
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
          )),
    );
  }
}
