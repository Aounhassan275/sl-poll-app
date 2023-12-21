import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/poll_entity_question/poll_entity_question_view.dart';

class AutomaticEnterView extends StatefulWidget {
  @override
  _AutomaticEnterViewState createState() => _AutomaticEnterViewState();
}

class _AutomaticEnterViewState extends State<AutomaticEnterView> {
  final PageController _pageController = PageController();
  double currentPage = 0;

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
                                            PollEntityQuestionView()));
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
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          onPageChanged: (int page) {
                            setState(() {
                              currentPage = page.toDouble();
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            switch (index) {
                              case 0:
                                return Stack(
                                  children: [
                                    SvgPicture.asset('assets/images/back.svg',
                                        fit: BoxFit.fill,
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height),
                                    Column(
                                      children: [
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
                                                              TextSpan(
                                                                  children: [
                                                            TextSpan(
                                                                text:
                                                                    'Automatic Enter',
                                                                style: TextStyle(
                                                                    color:
                                                                        white,
                                                                    fontSize:
                                                                        26,
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
                                              child: Column(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 40,
                                                                bottom: 35),
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
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                            SizedBox(width: 10),
                                                            Text(
                                                              'STEP 1',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    4282137660),
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
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
                                                                thickness: 2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          'Please, enter the project identification from Speak Logic Problem Solver or from Speack Logic Challenge in order to read Problem name, Solution name and Solution Function name',
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 12),
                                                        child: Container(
                                                          height: 90,
                                                          decoration: BoxDecoration(
                                                              color: lightGrey,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: TextField(
                                                            maxLines: 3,
                                                            decoration:
                                                                InputDecoration(
                                                              fillColor:
                                                                  lightGrey,
                                                              filled: true,
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          16,
                                                                      vertical:
                                                                          18),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide
                                                                        .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                              ),
                                                              hintText:
                                                                  'Enter project identification',
                                                              hintStyle:
                                                                  TextStyle(
                                                                color: grey,
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 165,
                                                                bottom: 20),
                                                        child: MainButton(
                                                          title: 'Next Step',
                                                          color: pinkColor,
                                                          color1: white,
                                                          onPressed: () {
                                                            _pageController
                                                                .animateToPage(
                                                              1,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      400),
                                                              curve: Curves
                                                                  .easeInOut,
                                                            );
                                                          },
                                                        ),
                                                      ),
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
                                      ],
                                    ),
                                  ],
                                );
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
                                                        text: 'Automatic Enter',
                                                        style: TextStyle(
                                                            color: Colors.white,
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
                                                                thickness: 2)),
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
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Column(children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 6),
                                                      child: Row(
                                                        children: [
                                                          Text('Problem name',
                                                              style: TextStyle(
                                                                  color: grey,
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child: Container(
                                                        height: 55,
                                                        decoration: BoxDecoration(
                                                            color: lightGrey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: TextField(
                                                          maxLines: 3,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor:
                                                                lightGrey,
                                                            filled: true,
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            16,
                                                                        vertical:
                                                                            18),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            hintText:
                                                                'Enter problem name',
                                                            hintStyle:
                                                                TextStyle(
                                                              color: grey,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 6, top: 24),
                                                      child: Row(
                                                        children: [
                                                          Text('Solution name',
                                                              style: TextStyle(
                                                                  color: grey,
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child: Container(
                                                        height: 55,
                                                        decoration: BoxDecoration(
                                                            color: lightGrey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: TextField(
                                                          maxLines: 3,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor:
                                                                lightGrey,
                                                            filled: true,
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            16,
                                                                        vertical:
                                                                            18),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            hintText:
                                                                'Enter Solution name',
                                                            hintStyle:
                                                                TextStyle(
                                                              color: grey,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 20,
                                                          horizontal: 8),
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
                                                              color: grey,
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                          Column(children: [
                                                            Row(children: [
                                                              Text('Does ',
                                                                  style: TextStyle(
                                                                      color:
                                                                          maincolor,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              SizedBox(
                                                                  width: 8),
                                                              MainButton(
                                                                  title:
                                                                      'Filters for Oil',
                                                                  color: blue,
                                                                  color1: white,
                                                                  buttonWidth:
                                                                      0.32,
                                                                  onPressed:
                                                                      () {})
                                                            ]),
                                                            Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          'enable the substitution for',
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
                                                                              0.26,
                                                                          onPressed:
                                                                              () {}),
                                                                      SizedBox(
                                                                          width:
                                                                              8),
                                                                      Text('?',
                                                                          style: TextStyle(
                                                                              color: maincolor,
                                                                              fontSize: 16,
                                                                              fontFamily: 'Roboto',
                                                                              fontWeight: FontWeight.w600))
                                                                    ]))
                                                          ]),
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
                                                                    _pageController.animateToPage(
                                                                        2,
                                                                        duration: Duration(
                                                                            milliseconds:
                                                                                400),
                                                                        curve: Curves
                                                                            .easeInOut);
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
                                                            decorator: DotsDecorator(
                                                                color: Color(
                                                                    4291680496),
                                                                activeColor:
                                                                    Colors
                                                                        .pink)))
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
                                                        text: 'Automatic Enter',
                                                        style: TextStyle(
                                                            color: Colors.white,
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
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    topLeft:
                                                        Radius.circular(25))),
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
                                                                thickness: 2)),
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
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: lightGrey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Container(
                                                            child: Column(
                                                                children: [
                                                              Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .only(
                                                                              top: 30),
                                                                          child: Container(
                                                                              child: RichText(
                                                                                  text: TextSpan(
                                                                            children: [
                                                                              TextSpan(text: 'Does ', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                              TextSpan(text: 'Filters for Oil', style: TextStyle(color: blue, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                              TextSpan(text: '\nenable the substitution for \n', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                              TextSpan(text: 'Dirty Oil', style: TextStyle(color: pinkColor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                              TextSpan(text: ' ?', style: TextStyle(color: maincolor, fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w600)),
                                                                            ],
                                                                          ))),
                                                                        )
                                                                      ])),
                                                              Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              50,
                                                                          bottom:
                                                                              20),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        MainButton(
                                                                          title:
                                                                              'Yes',
                                                                          color1:
                                                                              maincolor,
                                                                          buttonWidth:
                                                                              0.38,
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.push(context,
                                                                                MaterialPageRoute(builder: (context) => PollEntityQuestionView()));
                                                                          },
                                                                          color:
                                                                              violet,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        MainButton(
                                                                            title:
                                                                                'No',
                                                                            color1:
                                                                                maincolor,
                                                                            buttonWidth:
                                                                                0.38,
                                                                            onPressed:
                                                                                () {},
                                                                            color:
                                                                                violet)
                                                                      ]))
                                                            ]))),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 157,
                                                                bottom: 20),
                                                        child: MainButton(
                                                            title: 'Save Poll',
                                                            color1: white,
                                                            onPressed: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              PollEntityQuestionView()));
                                                            },
                                                            color: pinkColor)),
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
                                                            decorator: DotsDecorator(
                                                                color: Color(
                                                                    4291680496),
                                                                activeColor:
                                                                    Colors
                                                                        .pink)))
                                                  ]))
                                            ]))))
                                  ])
                                ]);
                            }
                            return null;
                          }))
                ]))));
  }
}
