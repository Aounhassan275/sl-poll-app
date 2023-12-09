import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/Drawer/drawer_view.dart';

class ManualEnterView6 extends StatefulWidget {
  const ManualEnterView6({super.key});

  @override
  State<ManualEnterView6> createState() => _ManualEnterView6State();
}

class _ManualEnterView6State extends State<ManualEnterView6> {
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
                                              color: Color(0xFFF2F8FF),
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
                                      width: 140,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Preview',
                                      style: TextStyle(
                                        color: Color(4282137660),
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 140,
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
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Container(
                                            height: 350,
                                            decoration: BoxDecoration(
                                                color: lightGrey,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Column(children: [
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 50),
                                                              child: Container(
                                                                width: 200,
                                                                height: 90,
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                      TextSpan(
                                                                          text:
                                                                              'Does ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                maincolor,
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          )),
                                                                      TextSpan(
                                                                        text:
                                                                            'Solution name',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              blue,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                          text:
                                                                              '\nenable the substitution for ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                maincolor,
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          )),
                                                                      TextSpan(
                                                                        text:
                                                                            'Problem name',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              pinkColor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                          text:
                                                                              ' ?',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                maincolor,
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ))
                                                                    ])),
                                                              ),
                                                            ),
                                                          ])),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 100),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        MainButton(
                                                          title: 'Yes',
                                                          color1: blue,
                                                          buttonWidth: 0.38,
                                                          onPressed: () {},
                                                          color: white,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        MainButton(
                                                          title: 'No',
                                                          color1: maincolor,
                                                          buttonWidth: 0.38,
                                                          onPressed: () {},
                                                          color: violet,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ])))),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 80),
                                      child: MainButton(
                                        title: 'Save Poll',
                                        color1: white,
                                        onPressed: () {
                                          Get.toNamed(AppRoutes.readmode1);
                                        },
                                        color: pinkColor,
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
                ],
              ),
            ),
          )),
    );
  }
}
