import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/Drawer/drawer_view.dart';

class ManualEnterView extends StatefulWidget {
  const ManualEnterView({Key? key}) : super(key: key);

  State<ManualEnterView> createState() => _ManualEnterViewState();
}

class _ManualEnterViewState extends State<ManualEnterView> {
  final controller = PageController(viewportFraction: 1.0);
  int currentPage = 0;
  bool isSelected1 = false;
  bool isCheckBoxChecked1 = false;
  bool ischecked1 = false;

  bool isSelected2 = false;
  bool isCheckBoxChecked2 = false;
  bool ischecked2 = false;

  bool isSelected3 = false;
  bool isCheckBoxChecked3 = false;
  bool ischecked3 = false;
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
            child: PageView.builder(
              controller: controller,
              itemCount: 3, // Total number of screens
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return Stack(
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
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Manual Enter',
                                              style: TextStyle(
                                                color: white,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  case 1:
                    return Flexible(
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
                                          color: lightGrey, thickness: 2)),
                                  SizedBox(width: 10),
                                  Text('STEP 2',
                                      style: TextStyle(
                                          color: Color(4282137660),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(width: 10),
                                  Container(
                                      width: 145,
                                      child: Divider(
                                          color: lightGrey, thickness: 2))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              Get.toNamed(
                                                  AppRoutes.manualenter3);
                                            },
                                            child: Text('Problem name',
                                                style: TextStyle(
                                                    color: grey,
                                                    fontSize: 13,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400)))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: lightGrey,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: TextField(
                                        maxLines: 3,
                                        decoration: InputDecoration(
                                          fillColor: lightGrey,
                                          filled: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 18),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          hintText: 'Enter problem name',
                                          hintStyle: TextStyle(
                                            color: grey,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Add Question to a Poll',
                                          style: TextStyle(
                                            color: grey,
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.32,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Is ',
                                                  style: TextStyle(
                                                    color: maincolor,
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                MainButton(
                                                    title: 'Dirty Oil',
                                                    color: pinkColor,
                                                    color1: white,
                                                    buttonWidth: 0.25,
                                                    onPressed: () {}),
                                                SizedBox(width: 8),
                                                Text(
                                                  'properly identified as',
                                                  style: TextStyle(
                                                    color: maincolor,
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 8),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Row(
                                                children: [
                                                  MainButton(
                                                      title:
                                                          'Dirty Oil Problem',
                                                      color: pinkColor,
                                                      color1: white,
                                                      buttonWidth: 0.42,
                                                      onPressed: () {}),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    '?',
                                                    style: TextStyle(
                                                      color: maincolor,
                                                      fontSize: 16,
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
                                        MainButton(
                                            title: 'Preview',
                                            color: pinkColor,
                                            color1: white,
                                            buttonWidth: 0.88,
                                            onPressed: () {
                                              Get.toNamed(
                                                  AppRoutes.manualenter3);
                                            }),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );

                  case 2:
                    return Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/back.svg',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, bottom: 25),
                                          child: Container(
                                              child:
                                                  Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: 'Manual Enter',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 26,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ])))),
                                    ])),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.72,
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
                                                width: 135,
                                                child: Divider(
                                                    color: Grey, thickness: 1)),
                                            SizedBox(width: 10),
                                            Text('PREVIEW',
                                                style: TextStyle(
                                                    color: Color(4282137660),
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(width: 10),
                                            Container(
                                                width: 135,
                                                child: Divider(
                                                    color: Grey, thickness: 1))
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: lightGrey,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Container(
                                              child: Column(
                                                children: [
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
                                                                      top: 30),
                                                              child: Container(
                                                                  child: RichText(
                                                                      text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Is ',
                                                                      style: TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text:
                                                                          'Dirty Oil',
                                                                      style: TextStyle(
                                                                          color:
                                                                              pinkColor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text:
                                                                          '\nproperly identified as \n',
                                                                      style: TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text:
                                                                          'Dirty Oil Problem',
                                                                      style: TextStyle(
                                                                          color:
                                                                              pinkColor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text:
                                                                          ' ?',
                                                                      style: TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              20,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                ],
                                                              ))),
                                                            )
                                                          ])),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 50,
                                                            bottom: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        MainButton(
                                                          title: 'Yes',
                                                          color1: maincolor,
                                                          buttonWidth: 0.38,
                                                          onPressed: () {},
                                                          color: violet,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 80),
                                            child: MainButton(
                                              title: 'Save Poll',
                                              color1: white,
                                              onPressed: () {
                                                Get.toNamed(
                                                    AppRoutes.readmode1);
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
                    );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
