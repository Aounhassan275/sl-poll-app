import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/home_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  List<String> images = [
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];
  bool isChecked = false;
  int initialLabelIndex = 0;

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
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeView()),
                          );
                        },
                        child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(children: [
                              Container(
                                height: 40,
                                width: 40,
                                child: SvgPicture.asset(
                                  'assets/images/listfilter.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                child: SvgPicture.asset(
                                  'assets/images/grid.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                child: SvgPicture.asset(
                                  'assets/images/serverblue.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset(
                                      'assets/images/maximizeblue.svg',
                                      fit: BoxFit.scaleDown))
                            ]))))
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
                      child: Column(children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0),
                                ),
                              ],
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 12),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: maincolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/calendar-days-red.svg'),
                                        ),
                                        Text(
                                          '28.10.23 - 30.10.23',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/map.svg'),
                                        ),
                                        Text(
                                          'USA',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/users-purple.svg'),
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, left: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/eye.svg'),
                                        ),
                                        Text(
                                          'Public',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Entity in Question:',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textcolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: pinkColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Text(
                                                  'Problem',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: false,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: blue,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: false,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: green,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution Function',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
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
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0),
                                ),
                              ],
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 12),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: maincolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/calendar-days-red.svg'),
                                        ),
                                        Text(
                                          '28.10.23 - 30.10.23',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/map.svg'),
                                        ),
                                        Text(
                                          'USA',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/users-purple.svg'),
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, left: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/eye.svg'),
                                        ),
                                        Text(
                                          'Public',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Entity in Question:',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textcolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: true,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: pinkColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Text(
                                                  'Problem',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: true,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: blue,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: true,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: green,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution Function',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
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
                            ),
                          ),
                        ])),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0),
                                ),
                              ],
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 12),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: maincolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/calendar-days-red.svg'),
                                        ),
                                        Text(
                                          '28.10.23 - 30.10.23',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/map.svg'),
                                        ),
                                        Text(
                                          'USA',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/users-purple.svg'),
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, left: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/eye.svg'),
                                        ),
                                        Text(
                                          'Public',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Entity in Question:',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textcolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: pinkColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Text(
                                                  'Problem',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: false,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: blue,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: false,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: green,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution Function',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
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
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: MediaQuery.of(context).size.height * 0.27,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0),
                                ),
                              ],
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 12),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: maincolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/calendar-days-red.svg'),
                                        ),
                                        Text(
                                          '28.10.23 - 30.10.23',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/map.svg'),
                                        ),
                                        Text(
                                          'USA',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/users-purple.svg'),
                                        ),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, left: 10),
                                          child: SvgPicture.asset(
                                              'assets/images/eye.svg'),
                                        ),
                                        Text(
                                          'Public',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: maincolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Entity in Question:',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: textcolor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: true,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: pinkColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 10,
                                                  right: 10,
                                                ),
                                                child: Text(
                                                  'Problem',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: true,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: blue,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible: true,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: green,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                                bottom: 5,
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: Text(
                                                'Solution Function',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
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
                            ),
                          ),
                        ])),
              ]))),
            )));
  }
}
