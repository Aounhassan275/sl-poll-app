import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/custom_checkbox.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode1/read_mode_view1.dart';

class ManualEnterView extends StatefulWidget {
  @override
  _ManualEnterViewState createState() => _ManualEnterViewState();
}

class _ManualEnterViewState extends State<ManualEnterView> {
  final PageController _pageController = PageController();
  double currentPage = 0;
  bool isSelected1 = false;
  bool ischecked1 = false;

  bool isSelected2 = false;
  bool ischecked2 = false;

  bool isSelected3 = false;
  bool ischecked3 = false;

  bool isProblemVisible = false;
  bool isSolutionVisible = false;
  bool isSolutionFunctionVisible = false;
  bool isSolutionDataVisible = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                                        builder: (context) =>
                                            ManualEnterView()));
                              },
                              child: SvgPicture.asset(
                                  'assets/images/left_arrow.svg'))))
                ],
                leading: Builder(
                    builder: (context) => InkWell(
                        onTap: () => Scaffold.of(context).openDrawer(),
                        child: SvgPicture.asset('assets/images/menu.svg',
                            fit: BoxFit.scaleDown))),
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white)),
            drawer: Drawer(child: DrawerScreenView()),
            body: Directionality(
                textDirection: TextDirection.ltr,
                child: Column(children: [
                  Expanded(
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: 3,
                          onPageChanged: (int page) {
                            setState(() {
                              currentPage = page.toDouble();
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            switch (index) {
                              case 0:
                                return Stack(children: [
                                  SvgPicture.asset(
                                    'assets/images/back.svg',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height,
                                  ),
                                  Column(children: [
                                    Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 50),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, bottom: 25),
                                                  child: Container(
                                                      child: Text.rich(
                                                          TextSpan(children: [
                                                    TextSpan(
                                                        text: 'Manual Enter',
                                                        style: TextStyle(
                                                            color: white,
                                                            fontSize: 26,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]))))
                                            ])),
                                    Flexible(
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 250, 250, 250),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    topLeft:
                                                        Radius.circular(25))),
                                            child: SingleChildScrollView(
                                                child: Column(children: [
                                              Column(children: [
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 40),
                                                    child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness:
                                                                      2)),
                                                          SizedBox(width: 10),
                                                          Text('STEP 1',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      4282137660),
                                                                  fontSize: 16,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          SizedBox(width: 10),
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness: 2))
                                                        ])),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .only(
                                                        top: 40, bottom: 14),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            ischecked1 =
                                                                !ischecked1;
                                                            isSelected1 =
                                                                !isSelected1;

                                                            isProblemVisible =
                                                                isSelected1;
                                                          });
                                                        },
                                                        child: Container(
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                              left: 10,
                                                              right: 20,
                                                              bottom: 10,
                                                            ),
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: isSelected1
                                                                  ? maincolor
                                                                  : Color(
                                                                      0xFFF2F8FF),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                              ),
                                                            ),
                                                            child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomCheckBox(),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      'Problem',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: TextStyle(
                                                                          color: isSelected1
                                                                              ? Colors
                                                                                  .white
                                                                              : maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600))
                                                                ])))),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .only(bottom: 14),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            ischecked2 =
                                                                !ischecked2;
                                                            isSelected2 =
                                                                !isSelected2;

                                                            isSolutionVisible =
                                                                isSelected2;
                                                          });
                                                        },
                                                        child: Container(
                                                            width: MediaQuery
                                                                    .of(context)
                                                                .size
                                                                .width,
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                              left: 10,
                                                              right: 20,
                                                              bottom: 10,
                                                            ),
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: isSelected2
                                                                  ? maincolor
                                                                  : Color(
                                                                      0xFFF2F8FF),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                              ),
                                                            ),
                                                            child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomCheckBox(),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      'Solution',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: TextStyle(
                                                                          color: isSelected2
                                                                              ? Colors
                                                                                  .white
                                                                              : maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600))
                                                                ])))),
                                                Padding(
                                                    padding: const EdgeInsets.only(
                                                        bottom: 14),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            ischecked3 =
                                                                !ischecked3;
                                                            isSelected3 =
                                                                !isSelected3;

                                                            isSolutionFunctionVisible =
                                                                isSelected3;
                                                          });
                                                        },
                                                        child: Container(
                                                            width: MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                            padding:
                                                                const EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 10,
                                                                    right: 20,
                                                                    bottom: 10),
                                                            decoration: ShapeDecoration(
                                                                color: isSelected3
                                                                    ? maincolor
                                                                    : Color(
                                                                        0xFFF2F8FF),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20))),
                                                            child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomCheckBox(),
                                                                  const SizedBox(
                                                                      width:
                                                                          10),
                                                                  Text(
                                                                      'Solution Function',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: TextStyle(
                                                                          color: isSelected3
                                                                              ? Colors
                                                                                  .white
                                                                              : maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600))
                                                                ])))),
                                                MainButton(
                                                    title: 'Next Step',
                                                    color: pinkColor,
                                                    color1: white,
                                                    onPressed: () {
                                                      _pageController
                                                          .animateToPage(1,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      400),
                                                              curve: Curves
                                                                  .easeInOut);
                                                    }),
                                                Positioned(
                                                    bottom: 20.0,
                                                    left: 0.0,
                                                    right: 0.0,
                                                    child: DotsIndicator(
                                                        onTap: (position) {
                                                          _pageController
                                                              .jumpToPage(
                                                                  position);
                                                        },
                                                        dotsCount: 3,
                                                        position: int.parse(
                                                            currentPage
                                                                .toStringAsFixed(
                                                                    0)),
                                                        decorator:
                                                            DotsDecorator(
                                                                color: Color(
                                                                    4291680496),
                                                                activeColor:
                                                                    Colors
                                                                        .pink)))
                                              ])
                                            ]))))
                                  ])
                                ]);
                              case 1:
                                return Stack(children: [
                                  SvgPicture.asset(
                                    'assets/images/back.svg',
                                    fit: BoxFit.fill,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                  ),
                                  Column(children: [
                                    Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 50),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, bottom: 25),
                                                  child: Container(
                                                      child: Text.rich(
                                                          TextSpan(children: [
                                                    TextSpan(
                                                        text: 'Manual Enter',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 26,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]))))
                                            ])),
                                    Flexible(
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.75,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 250, 250, 250),
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    topLeft:
                                                        Radius.circular(25))),
                                            child: SingleChildScrollView(
                                                child: Column(children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 40),
                                                    child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness:
                                                                      2)),
                                                          SizedBox(width: 10),
                                                          Text('STEP 2',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      4282137660),
                                                                  fontSize: 16,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          SizedBox(width: 10),
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.35,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness: 2))
                                                        ])),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Column(children: [
                                                    Visibility(
                                                      visible: isProblemVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 6),
                                                          child: Row(children: [
                                                            Text('Problem name',
                                                                style: TextStyle(
                                                                    color: grey,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400))
                                                          ])),
                                                    ),
                                                    Visibility(
                                                      visible: isProblemVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          child: Container(
                                                              height: 90,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      lightGrey,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          20)),
                                                              child: TextField(
                                                                  maxLines: 3,
                                                                  decoration:
                                                                      InputDecoration(
                                                                          fillColor:
                                                                              lightGrey,
                                                                          filled:
                                                                              true,
                                                                          contentPadding: EdgeInsets.symmetric(
                                                                              horizontal:
                                                                                  16,
                                                                              vertical:
                                                                                  18),
                                                                          border:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide.none,
                                                                            borderRadius:
                                                                                BorderRadius.circular(20),
                                                                          ),
                                                                          hintText:
                                                                              'Enter problem name',
                                                                          hintStyle: TextStyle(
                                                                              color: grey,
                                                                              fontSize: 16,
                                                                              fontFamily: 'Roboto',
                                                                              fontWeight: FontWeight.w400))))),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          isSolutionVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 6,
                                                                  top: 14),
                                                          child: Row(children: [
                                                            Text(
                                                                'Solution name',
                                                                style: TextStyle(
                                                                    color: grey,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400))
                                                          ])),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          isSolutionVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          child: Container(
                                                              height: 90,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      lightGrey,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          20)),
                                                              child: TextField(
                                                                  maxLines: 3,
                                                                  decoration:
                                                                      InputDecoration(
                                                                          fillColor:
                                                                              lightGrey,
                                                                          filled:
                                                                              true,
                                                                          contentPadding: EdgeInsets.symmetric(
                                                                              horizontal:
                                                                                  16,
                                                                              vertical:
                                                                                  18),
                                                                          border:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide.none,
                                                                            borderRadius:
                                                                                BorderRadius.circular(20),
                                                                          ),
                                                                          hintText:
                                                                              'Enter solution name',
                                                                          hintStyle: TextStyle(
                                                                              color: grey,
                                                                              fontSize: 16,
                                                                              fontFamily: 'Roboto',
                                                                              fontWeight: FontWeight.w400))))),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          isSolutionFunctionVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 6,
                                                                  top: 14),
                                                          child: Row(children: [
                                                            Text(
                                                                'Solution Function name',
                                                                style: TextStyle(
                                                                    color: grey,
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400))
                                                          ])),
                                                    ),
                                                    Visibility(
                                                      visible:
                                                          isSolutionFunctionVisible,
                                                      child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          child: Container(
                                                              height: 90,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      lightGrey,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          20)),
                                                              child: TextField(
                                                                  maxLines: 3,
                                                                  decoration:
                                                                      InputDecoration(
                                                                          fillColor:
                                                                              lightGrey,
                                                                          filled:
                                                                              true,
                                                                          contentPadding: EdgeInsets.symmetric(
                                                                              horizontal:
                                                                                  16,
                                                                              vertical:
                                                                                  18),
                                                                          border:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide.none,
                                                                            borderRadius:
                                                                                BorderRadius.circular(20),
                                                                          ),
                                                                          hintText:
                                                                              'Enter solution function name',
                                                                          hintStyle: TextStyle(
                                                                              color: grey,
                                                                              fontSize: 16,
                                                                              fontFamily: 'Roboto',
                                                                              fontWeight: FontWeight.w400))))),
                                                    ),
                                                    Visibility(
                                                      visible: isProblemVisible,
                                                      child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 20,
                                                                  horizontal:
                                                                      8),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                    'Add Question to a Poll',
                                                                    style: TextStyle(
                                                                        color:
                                                                            grey,
                                                                        fontSize:
                                                                            13,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400))
                                                              ])),
                                                    ),
                                                    Container(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                          Visibility(
                                                            visible:
                                                                isSelected1 &&
                                                                    !isSelected2,
                                                            child: Column(
                                                                children: [
                                                                  Row(
                                                                      children: [
                                                                        Text(
                                                                            'Is',
                                                                            style: TextStyle(
                                                                                color: maincolor,
                                                                                fontSize: 16,
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w600)),
                                                                        SizedBox(
                                                                            width:
                                                                                8),
                                                                        MainButton(
                                                                            title:
                                                                                'Dirty Oil',
                                                                            color:
                                                                                pinkColor,
                                                                            color1:
                                                                                white,
                                                                            buttonWidth:
                                                                                0.25,
                                                                            onPressed:
                                                                                () {}),
                                                                        SizedBox(
                                                                            width:
                                                                                8),
                                                                        Text(
                                                                            'properly identified as',
                                                                            style: TextStyle(
                                                                                color: maincolor,
                                                                                fontSize: 16,
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w600))
                                                                      ]),
                                                                  Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8),
                                                                      child: Row(
                                                                          children: [
                                                                            MainButton(
                                                                                title: 'Dirty Oil Problem',
                                                                                color: pinkColor,
                                                                                color1: white,
                                                                                buttonWidth: 0.42,
                                                                                onPressed: () {}),
                                                                            SizedBox(width: 8),
                                                                            Text('?',
                                                                                style: TextStyle(color: maincolor, fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w600))
                                                                          ]))
                                                                ]),
                                                          ),
                                                          Visibility(
                                                            visible:
                                                                isSelected2 &&
                                                                    !isSelected3,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 14),
                                                              child: Column(
                                                                  children: [
                                                                    Row(
                                                                        children: [
                                                                          Text(
                                                                              'Does',
                                                                              style: TextStyle(color: maincolor, fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                          SizedBox(
                                                                              width: 8),
                                                                          MainButton(
                                                                              title: 'Solution name',
                                                                              color: blue,
                                                                              color1: white,
                                                                              buttonWidth: 0.32,
                                                                              onPressed: () {})
                                                                        ]),
                                                                    Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            top:
                                                                                8),
                                                                        child: Row(
                                                                            children: [
                                                                              Text('enable the substitution for', style: TextStyle(color: maincolor, fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                            ])),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          MainButton(
                                                                              title: 'Problem name',
                                                                              color: pinkColor,
                                                                              color1: white,
                                                                              buttonWidth: 0.36,
                                                                              onPressed: () {}),
                                                                          SizedBox(
                                                                              width: 8),
                                                                          Text(
                                                                              '?',
                                                                              style: TextStyle(color: maincolor, fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w600))
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ),
                                                          Visibility(
                                                            visible:
                                                                isSelected3,
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              16),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        'Does',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                      MainButton(
                                                                          title:
                                                                              'Solution Function name',
                                                                          color:
                                                                              green,
                                                                          color1:
                                                                              white,
                                                                          buttonWidth:
                                                                              0.55,
                                                                          onPressed:
                                                                              () {}),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              16,
                                                                          bottom:
                                                                              8),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        'properly identified as',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: 8),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8),
                                                                  child: Row(
                                                                    children: [
                                                                      MainButton(
                                                                          title:
                                                                              'Problem name',
                                                                          color:
                                                                              pinkColor,
                                                                          color1:
                                                                              white,
                                                                          buttonWidth:
                                                                              0.38,
                                                                          onPressed:
                                                                              () {}),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                      Text(
                                                                        'by',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                      MainButton(
                                                                          title:
                                                                              'Solution name',
                                                                          color:
                                                                              blue,
                                                                          color1:
                                                                              white,
                                                                          buttonWidth:
                                                                              0.38,
                                                                          onPressed:
                                                                              () {}),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                      Text(
                                                                        '?',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              maincolor,
                                                                          fontSize:
                                                                              16,
                                                                          fontFamily:
                                                                              'Roboto',
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
                                                          Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 105,
                                                                      bottom:
                                                                          20),
                                                              child: MainButton(
                                                                  title:
                                                                      'Preview',
                                                                  color:
                                                                      pinkColor,
                                                                  color1: white,
                                                                  buttonWidth:
                                                                      0.88,
                                                                  onPressed:
                                                                      () {
                                                                    _pageController
                                                                        .animateToPage(
                                                                      2,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              400),
                                                                      curve: Curves
                                                                          .easeInOut,
                                                                    );
                                                                  }))
                                                        ])),
                                                    Positioned(
                                                        bottom: 20.0,
                                                        left: 0.0,
                                                        right: 0.0,
                                                        child: DotsIndicator(
                                                            onTap: (position) {
                                                              _pageController
                                                                  .jumpToPage(
                                                                      position);
                                                            },
                                                            dotsCount: 3,
                                                            position: int.parse(
                                                                currentPage
                                                                    .toStringAsFixed(
                                                                        0)),
                                                            decorator:
                                                                DotsDecorator(
                                                              color: Color(
                                                                  4291680496),
                                                              activeColor:
                                                                  Colors.pink,
                                                            )))
                                                  ]))
                                            ]))))
                                  ])
                                ]);
                              case 2:
                                return Stack(children: [
                                  SvgPicture.asset(
                                    'assets/images/back.svg',
                                    fit: BoxFit.fill,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                  ),
                                  Stack(children: [
                                    Column(children: [
                                      Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.fromLTRB(
                                              20, 0, 20, 50),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20,
                                                            bottom: 25),
                                                    child: Container(
                                                        child: Text.rich(
                                                            TextSpan(children: [
                                                      TextSpan(
                                                          text: 'Manual Enter',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 26,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ])))),
                                              ])),
                                      Flexible(
                                          child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 20, right: 20),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.72,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 250, 250, 250),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  25),
                                                          topLeft:
                                                              Radius.circular(
                                                                  25))),
                                              child: SingleChildScrollView(
                                                  child: Column(children: [
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 40),
                                                    child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.33,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness:
                                                                      2)),
                                                          SizedBox(width: 10),
                                                          Text('PREVIEW',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      4282137660),
                                                                  fontSize: 16,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          SizedBox(width: 10),
                                                          Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.33,
                                                              child: Divider(
                                                                  color:
                                                                      lightGrey,
                                                                  thickness: 2))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30),
                                                    child: Column(children: [
                                                      Visibility(
                                                        visible:
                                                            isProblemVisible &&
                                                                !isSolutionVisible,
                                                        child: Container(
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    lightGrey,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                            child: Container(
                                                                child: Column(
                                                                    children: [
                                                                  Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                                padding: const EdgeInsets.only(top: 30),
                                                                                child: Container(
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                  TextSpan(text: 'Is ', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                  TextSpan(text: 'Dirty Oil', style: TextStyle(color: pinkColor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                  TextSpan(text: '\nproperly identified as \n', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                  TextSpan(text: 'Dirty Oil Problem', style: TextStyle(color: pinkColor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                  TextSpan(text: ' ?', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600))
                                                                                ]))))
                                                                          ])),
                                                                  Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              50,
                                                                          bottom:
                                                                              20),
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                            )
                                                                          ]))
                                                                ]))),
                                                      ),
                                                      Visibility(
                                                          visible:
                                                              isProblemVisible &&
                                                                  isSolutionVisible,
                                                          child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 8),
                                                              child: Container(
                                                                  decoration: BoxDecoration(
                                                                      color:
                                                                          lightGrey,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20)),
                                                                  child:
                                                                      Container(
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                          child:
                                                                              Column(children: [
                                                                            Padding(
                                                                                padding: const EdgeInsets.only(
                                                                                  top: 20,
                                                                                ),
                                                                                child: Container(
                                                                                    child: Column(
                                                                                  children: [
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      Text('Does', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                      Text(' Solution name', style: TextStyle(color: blue, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                    ]),
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      Text('enable the substitution for ', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                    ]),
                                                                                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      Text('Problem name', style: TextStyle(color: pinkColor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                      Text(' ?', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                                    ])
                                                                                  ],
                                                                                ))),
                                                                            Padding(
                                                                                padding: const EdgeInsets.only(top: 50, bottom: 20),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                  MainButton(
                                                                                    title: 'Yes',
                                                                                    color1: white,
                                                                                    buttonWidth: 0.38,
                                                                                    onPressed: () {},
                                                                                    color: maincolor,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 10,
                                                                                  ),
                                                                                  MainButton(title: 'No', color1: maincolor, buttonWidth: 0.38, onPressed: () {}, color: violet)
                                                                                ]))
                                                                          ]))))),
                                                      Visibility(
                                                          visible:
                                                              isSolutionFunctionVisible,
                                                          child: Column(
                                                              children: [
                                                                Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(top: 50),
                                                                            child:
                                                                                Container(
                                                                              width: 200,
                                                                              height: 90,
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                TextSpan(
                                                                                    text: 'Is ',
                                                                                    style: TextStyle(
                                                                                      color: maincolor,
                                                                                      fontSize: 20,
                                                                                      fontFamily: 'Roboto',
                                                                                      fontWeight: FontWeight.w600,
                                                                                    )),
                                                                                TextSpan(
                                                                                  text: 'Dirty Oil',
                                                                                  style: TextStyle(
                                                                                    color: pinkColor,
                                                                                    fontSize: 20,
                                                                                    fontFamily: 'Roboto',
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                    text: '\nproperly identified as \n',
                                                                                    style: TextStyle(
                                                                                      color: maincolor,
                                                                                      fontSize: 20,
                                                                                      fontFamily: 'Roboto',
                                                                                      fontWeight: FontWeight.w600,
                                                                                    )),
                                                                                TextSpan(
                                                                                  text: 'Dirty Oil Problem',
                                                                                  style: TextStyle(
                                                                                    color: pinkColor,
                                                                                    fontSize: 20,
                                                                                    fontFamily: 'Roboto',
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                    text: ' ?',
                                                                                    style: TextStyle(
                                                                                      color: maincolor,
                                                                                      fontSize: 20,
                                                                                      fontFamily: 'Roboto',
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ))
                                                                              ])),
                                                                            ),
                                                                          ),
                                                                        ])),
                                                                Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            100),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          MainButton(
                                                                              title: 'Yes',
                                                                              color1: maincolor,
                                                                              buttonWidth: 0.38,
                                                                              onPressed: () {},
                                                                              color: violet),
                                                                          SizedBox(
                                                                            width:
                                                                                10,
                                                                          ),
                                                                          MainButton(
                                                                              title: 'No',
                                                                              color1: maincolor,
                                                                              buttonWidth: 0.38,
                                                                              onPressed: () {},
                                                                              color: violet)
                                                                        ]))
                                                              ]))
                                                    ])),
                                                Visibility(
                                                  visible: isProblemVisible,
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 157,
                                                              bottom: 20),
                                                      child: MainButton(
                                                          title: 'Save Poll',
                                                          color1: white,
                                                          onPressed: () {
                                                            Get.toNamed(
                                                                AppRoutes
                                                                    .readmode1,
                                                                arguments: isSelected1
                                                                    ? "1"
                                                                    : isSelected2
                                                                        ? "2"
                                                                        : isSelected3
                                                                            ? "3"
                                                                            : isSelected1);
                                                          },
                                                          color: pinkColor)),
                                                ),
                                                // Visibility(
                                                //   visible: isProblemVisible &&
                                                //       isSolutionVisible,
                                                //   child: Padding(
                                                //       padding:
                                                //           const EdgeInsets.only(
                                                //               top: 157,
                                                //               bottom: 20),
                                                //       child: MainButton(
                                                //           title: 'Save Poll',
                                                //           color1: white,
                                                //           onPressed: () {
                                                //             Navigator.push(
                                                //                 context,
                                                //                 MaterialPageRoute(
                                                //                     builder: (context) =>
                                                //                         Visibility(
                                                //                             child:
                                                //                                 ReadModeView6())));
                                                //           },
                                                //           color: pinkColor)),
                                                // ),
                                                Positioned(
                                                    bottom: 20.0,
                                                    left: 0.0,
                                                    right: 0.0,
                                                    child: DotsIndicator(
                                                        onTap: (position) {
                                                          _pageController
                                                              .jumpToPage(
                                                                  position);
                                                        },
                                                        dotsCount: 3,
                                                        position: int.parse(
                                                            currentPage
                                                                .toStringAsFixed(
                                                                    0)),
                                                        decorator:
                                                            DotsDecorator(
                                                                color: Color(
                                                                    4291680496),
                                                                activeColor:
                                                                    Colors
                                                                        .pink)))
                                              ]))))
                                    ])
                                  ])
                                ]);
                            }
                            return null;
                          }))
                ]))));
  }
}
