// ignore_for_file: unused_field, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/container_inputfield_CreateEvent.dart';
import 'package:speak_logic_poll/components/divider.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/Bottom_Navbar/Bottom_Navbar.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_View.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/wellcome_home_view.dart';
import 'package:speak_logic_poll/views/home/Home_Screens/home_screen_view.dart';

class CreatePollFromEventView extends StatefulWidget {
  const CreatePollFromEventView({Key? key}) : super(key: key);

  @override
  State<CreatePollFromEventView> createState() =>
      _CreatePollFromEventViewState();
}

class _CreatePollFromEventViewState extends State<CreatePollFromEventView> {
  bool isProblemSelected = false;
  bool isSolutionSelected = false;
  bool isSolutionFunctionSelected = false;

  String? selectedValue;
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WellcomeHomeView()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 40,
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
                Column(children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Poll from Event',
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
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 14),
                              child: CustomDivider(
                                name: 'Create Event',
                                startingwidth:
                                    MediaQuery.of(context).size.width * 0.02,
                                endingwidth:
                                    MediaQuery.of(context).size.width * 0.62,
                              ),
                            ),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: lightGrey),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                'Add note or explanation...',
                                            hintStyle: TextStyle(
                                              color: Color(0xFF9BA6BE),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 18),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide.none,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showPopupMenu(context);
                                          },
                                          child: SvgPicture.asset(
                                              'assets/images/paperclip.svg'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: CustomDivider(
                                name: 'Entity in Question',
                                startingwidth:
                                    MediaQuery.of(context).size.width * 0.02,
                                endingwidth:
                                    MediaQuery.of(context).size.width * 0.55,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isProblemSelected = !isProblemSelected;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: ShapeDecoration(
                                      color: isProblemSelected
                                          ? pinkColor
                                          : lightGrey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Problem',
                                          style: TextStyle(
                                            color: isProblemSelected
                                                ? white
                                                : maincolor,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: isProblemSelected
                                                ? FontWeight.bold
                                                : FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSolutionSelected = !isSolutionSelected;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: ShapeDecoration(
                                      color:
                                          isSolutionSelected ? blue : lightGrey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Solution',
                                          style: TextStyle(
                                            color: isSolutionSelected
                                                ? white
                                                : maincolor,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: isSolutionSelected
                                                ? FontWeight.bold
                                                : FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSolutionFunctionSelected =
                                          !isSolutionFunctionSelected;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: ShapeDecoration(
                                      color: isSolutionFunctionSelected
                                          ? pinkColor
                                          : lightGrey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Solution Function ',
                                          style: TextStyle(
                                            color: isSolutionFunctionSelected
                                                ? white
                                                : maincolor,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight:
                                                isSolutionFunctionSelected
                                                    ? FontWeight.bold
                                                    : FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: Visibility(
                                visible: isProblemSelected,
                                child: CustomDivider(
                                  name: 'Problem name',
                                  startingwidth:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endingwidth:
                                      MediaQuery.of(context).size.width * 0.59,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isProblemSelected,
                              child: CreateEventInputField(
                                name: 'Enter problem name',
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: Visibility(
                                visible: isSolutionSelected,
                                child: CustomDivider(
                                  name: 'Solution name',
                                  startingwidth:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endingwidth:
                                      MediaQuery.of(context).size.width * 0.59,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isSolutionSelected,
                              child: CreateEventInputField(
                                name: 'Enter solution name',
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: Visibility(
                                visible: isSolutionFunctionSelected,
                                child: CustomDivider(
                                  name: 'Solution function name',
                                  startingwidth:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endingwidth:
                                      MediaQuery.of(context).size.width * 0.46,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isSolutionFunctionSelected,
                              child: CreateEventInputField(
                                name: 'Enter solution function name',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: MainButton(
                                title: 'Create poll',
                                color: maincolor,
                                color1: white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavbar()));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 0, 0),
      items: [
        PopupMenuItem(
          child: Text('Add video'),
          value: 'Add video',
        ),
        PopupMenuItem(
          child: Text('Add audio'),
          value: 'Add audio',
        ),
        PopupMenuItem(
          child: Text('Add image'),
          value: 'Add image',
        ),
        PopupMenuItem(
          child: Text('Embed link Youtube'),
          value: 'Embed link Youtube',
        ),
      ],
    ).then((value) {
      if (value != null) {
        addItem(value);
      }
    });
  }

  void addItem(String item) {
    print('Selected item: $item');
  }
}
