import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/Invitations/Accept_Invitation/Accept_Invitation.dart';
import 'package:speak_logic_poll/views/Invitations/Create_New_Invitations/create_Invitations_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:image_stack/image_stack.dart';

class SendReceiveInvitation extends StatefulWidget {
  const SendReceiveInvitation({super.key});

  @override
  State<SendReceiveInvitation> createState() => _SendReceiveInvitationState();
}

class _SendReceiveInvitationState extends State<SendReceiveInvitation> {
  List<String> images = [
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];
  String _selectedValue = 'All';
  bool isChecked = false;
  bool _isSendTab = true;
  bool _isReceiveTab = false;
  int initialLabelIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 72,
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewInvitation()),
                    );
                  },
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, right: 17),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/addfriend.svg'),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'New Invitation',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: maincolor),
                              ),
                            ),
                            SvgPicture.asset('assets/images/plus.svg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.only(right: 20, top: 30),
              child: Builder(
                  builder: (context) => InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: SvgPicture.asset(
                        'assets/images/menu_blue.svg',
                        fit: BoxFit.scaleDown,
                      ))),
            ),
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            )),
        drawer: Drawer(child: DrawerScreenView()),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: ToggleSwitch(
                      minWidth: MediaQuery.of(context).size.width,
                      minHeight: MediaQuery.of(context).size.height * 0.07,
                      fontSize: 16.0,
                      cornerRadius: 20,
                      activeBgColor: [purple1],
                      radiusStyle: true,
                      activeFgColor: white,
                      inactiveFgColor: white,
                      inactiveBgColor: maincolor,
                      activeBorders: [
                        Border.all(
                          color: maincolor,
                          width: 3.0,
                        ),
                      ],
                      initialLabelIndex: initialLabelIndex,
                      totalSwitches: 2,
                      labels: [
                        'Send',
                        'Received',
                      ],
                      onToggle: (index) {
                        switch (index) {
                          case 0:
                            _isSendTab = true;
                            _isReceiveTab = false;
                          case 1:
                            _isSendTab = false;
                            _isReceiveTab = true;
                            break;
                          default:
                            _isSendTab = true;
                            _isReceiveTab = false;
                        }

                        setState(() {
                          initialLabelIndex = index!;
                        });
                      },
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.63,
                          decoration: BoxDecoration(
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 12, right: 12),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    'assets/images/list-filter-blue.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 180,
                                    child: DropdownButton(
                                        icon: SvgPicture.asset(
                                            'assets/images/chevron-down.svg'),
                                        value: _selectedValue,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: maincolor),
                                        iconSize: 24,
                                        dropdownColor: Color(0xFFF5F4F9),
                                        borderRadius: BorderRadius.circular(20),
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        items: [
                                          DropdownMenuItem(
                                              value: 'All', child: Text('All')),
                                          DropdownMenuItem(
                                              value: 'Accepted',
                                              child: Text('Accepted')),
                                          DropdownMenuItem(
                                              value: 'Pending',
                                              child: Text('Pending')),
                                          DropdownMenuItem(
                                              value: 'Declined',
                                              child: Text('Declined')),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedValue = value as String;
                                          });
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.069,
                          decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '12',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: maincolor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  //----------------send card #1 with single user----------------------
                  Visibility(
                    visible: _isSendTab,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0))
                            ],
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: maincolor),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
                                            child: SvgPicture.asset(
                                                'assets/images/calendar-days-red.svg'),
                                          ),
                                          Text(
                                            '28.10.23 - 30.10.23',
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
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
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
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
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
                                      padding: const EdgeInsets.only(right: 10),
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Send to:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: lightpurple),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: lightpurple,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'JS',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      'Jane Smith',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: maincolor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 30),
                                    child: Text(
                                      'New York, Buffalo',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: green,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 5,
                                          right: 10,
                                          left: 10),
                                      child: Text(
                                        'Accepted',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              //---------------------------ExpandablePanel started------------------------------------
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ExpandablePanel(
                                    collapsed: ExpandableButton(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: lightpurple,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 13, bottom: 13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'More info',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              SvgPicture.asset(
                                                  'assets/images/chevron-down-white.svg'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    expanded: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Entity in Question:',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: textcolor),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, bottom: 12),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: pinkColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Problem',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Solution',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Solution Function',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      maincolor),
                                                              children: <TextSpan>[
                                                            TextSpan(
                                                                text: 'Is '),
                                                            TextSpan(
                                                                text:
                                                                    'Dirty Oil ',
                                                                style: TextStyle(
                                                                    color:
                                                                        pinkColor)),
                                                            TextSpan(
                                                                text:
                                                                    'properly identified as')
                                                          ]))
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 6),
                                                    child: Row(
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        pinkColor),
                                                                children: <TextSpan>[
                                                              TextSpan(
                                                                  text:
                                                                      'Dirty Oil Problem '),
                                                              TextSpan(
                                                                  text: '?',
                                                                  style: TextStyle(
                                                                      color:
                                                                          maincolor))
                                                            ]))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                                side: BorderSide(
                                                    color: green, width: 0),
                                                fillColor:
                                                    MaterialStateProperty.all(
                                                        green),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                }),
                                            Text(
                                              'Jane Vote: YES',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: maincolor),
                                            ),
                                          ],
                                        ),
                                        ExpandableButton(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: lightpurple,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 13, bottom: 13),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Less info',
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  ),
                                                  SvgPicture.asset(
                                                      'assets/images/chevron-up-white.svg'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-----------------send card #2 with multiple send to users-----------------
                  Visibility(
                    visible: _isSendTab,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0))
                            ],
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Dirty Oil',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: maincolor),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
                                            child: SvgPicture.asset(
                                                'assets/images/calendar-days-red.svg'),
                                          ),
                                          Text(
                                            '28.10.23 - 30.10.23',
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
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
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
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
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
                                      padding: const EdgeInsets.only(right: 10),
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Send to:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: lightpurple),
                                    ),
                                  ],
                                ),
                              ),
                              ExpandablePanel(
                                theme: ExpandableThemeData(
                                    iconSize: 30, iconColor: maincolor),
                                header: ImageStack(
                                  imageList: images,
                                  imageRadius: 45,
                                  imageCount: 6,
                                  imageBorderWidth: 3,
                                  totalCount: images.length,
                                  backgroundColor: Colors.white,
                                  imageBorderColor: Colors.white,
                                  extraCountBorderColor: maincolor,
                                ),
                                collapsed: Text(""),
                                expanded: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Divider(
                                        color: Color(0xFF9BA6BE),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: lightpurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Center(
                                                child: Text(
                                                  'JS',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Text(
                                                'Jane Smith',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: maincolor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 30),
                                              child: Text(
                                                'New York, Buffalo',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 10,
                                                    left: 10),
                                                child: Text(
                                                  'Accepted',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: lightpurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Center(
                                                child: Text(
                                                  'JS',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Text(
                                                'Jane Smith',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: maincolor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 30),
                                              child: Text(
                                                'New York, Buffalo',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 13,
                                                    left: 13),
                                                child: Text(
                                                  'Pending',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: lightpurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Center(
                                                child: Text(
                                                  'JS',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Text(
                                                'Jane Smith',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: maincolor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 30),
                                              child: Text(
                                                'New York, Buffalo',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: maincolor),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: pinkColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 11,
                                                    left: 11),
                                                child: Text(
                                                  'Declined',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //---------------------------ExpandablePanel started------------------------------------
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ExpandablePanel(
                                    collapsed: ExpandableButton(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: lightpurple,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 13, bottom: 13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'More info',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              SvgPicture.asset(
                                                  'assets/images/chevron-down-white.svg'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    expanded: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Entity in Question:',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: textcolor),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, bottom: 12),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: pinkColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Problem',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Solution',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Solution Function',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      maincolor),
                                                              children: <TextSpan>[
                                                            TextSpan(
                                                                text: 'Is '),
                                                            TextSpan(
                                                                text:
                                                                    'Dirty Oil ',
                                                                style: TextStyle(
                                                                    color:
                                                                        pinkColor)),
                                                            TextSpan(
                                                                text:
                                                                    'properly identified as')
                                                          ]))
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 6),
                                                    child: Row(
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        pinkColor),
                                                                children: <TextSpan>[
                                                              TextSpan(
                                                                  text:
                                                                      'Dirty Oil Problem '),
                                                              TextSpan(
                                                                  text: '?',
                                                                  style: TextStyle(
                                                                      color:
                                                                          maincolor))
                                                            ]))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                                side: BorderSide(
                                                    color: green, width: 0),
                                                fillColor:
                                                    MaterialStateProperty.all(
                                                        green),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                }),
                                            Text(
                                              'Jane Vote: YES',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: maincolor),
                                            ),
                                          ],
                                        ),
                                        ExpandableButton(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: lightpurple,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 13, bottom: 13),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Less info',
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  ),
                                                  SvgPicture.asset(
                                                      'assets/images/chevron-up-white.svg'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-----------------Receive card #1 -----------------------
                  Visibility(
                    visible: _isReceiveTab,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: maincolor,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0))
                            ],
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: maincolor),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
                                            child: SvgPicture.asset(
                                                'assets/images/calendar-days-red.svg'),
                                          ),
                                          Text(
                                            '28.10.23 - 30.10.23',
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
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
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
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
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
                                      padding: const EdgeInsets.only(right: 10),
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Send to:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: lightpurple),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: lightpurple,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'JS',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      'Jane Smith',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: maincolor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 30),
                                    child: Text(
                                      'New York, Buffalo',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: green,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 5,
                                          right: 10,
                                          left: 10),
                                      child: Text(
                                        'Accepted',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              //---------------------------ExpandablePanel started-------------------
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ExpandablePanel(
                                    collapsed: ExpandableButton(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: lightpurple,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 13, bottom: 13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'More info',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              SvgPicture.asset(
                                                  'assets/images/chevron-down-white.svg'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    expanded: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: ExpandableButton(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: lightpurple,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13, bottom: 13),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Less info',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.white),
                                                    ),
                                                    SvgPicture.asset(
                                                        'assets/images/chevron-up-white.svg'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Entity in Question:',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: textcolor),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 12),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: pinkColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Problem',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      maincolor),
                                                              children: <TextSpan>[
                                                            TextSpan(
                                                                text: 'Is '),
                                                            TextSpan(
                                                                text:
                                                                    'Dirty Oil ',
                                                                style: TextStyle(
                                                                    color:
                                                                        pinkColor)),
                                                            TextSpan(
                                                                text:
                                                                    'properly identified as')
                                                          ]))
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 6),
                                                    child: Row(
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        pinkColor),
                                                                children: <TextSpan>[
                                                              TextSpan(
                                                                  text:
                                                                      'Dirty Oil Problem '),
                                                              TextSpan(
                                                                  text: '?',
                                                                  style: TextStyle(
                                                                      color:
                                                                          maincolor))
                                                            ]))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Container(
                                                height: 25,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                    color: green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Text(
                                                    'YES',
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: maincolor),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'Dirty Oil ',
                                                      style: TextStyle(
                                                          color: pinkColor)),
                                                  TextSpan(
                                                      text:
                                                          'identified properly'),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-----------------Receive card #2 (pending response) -----------------------
                  Visibility(
                    visible: _isReceiveTab,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: green,
                                  spreadRadius: -0.5,
                                  offset: Offset(-3, 0))
                            ],
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16, bottom: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Abcd Poll',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: maincolor),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
                                            child: SvgPicture.asset(
                                                'assets/images/calendar-days-red.svg'),
                                          ),
                                          Text(
                                            '28.10.23 - 30.10.23',
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
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 6),
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
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
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
                                      padding: const EdgeInsets.only(right: 10),
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Send to:',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: lightpurple),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: lightpurple,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text(
                                        'JS',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      'Jane Smith',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: maincolor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 30),
                                    child: Text(
                                      'New York, Buffalo',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: maincolor),
                                    ),
                                  ),
                                ],
                              ),
                              //---------------------------ExpandablePanel started-------------------
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: ExpandablePanel(
                                    collapsed: ExpandableButton(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: lightpurple,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 13, bottom: 13),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'More info',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                              SvgPicture.asset(
                                                  'assets/images/chevron-down-white.svg'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    expanded: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: ExpandableButton(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: lightpurple,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13, bottom: 13),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Less info',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.white),
                                                    ),
                                                    SvgPicture.asset(
                                                        'assets/images/chevron-up-white.svg'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Entity in Question:',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: textcolor),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 12),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: pinkColor
                                                        .withOpacity(0.6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5,
                                                            bottom: 5,
                                                            left: 10,
                                                            right: 10),
                                                    child: Text(
                                                      'Problem',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      maincolor),
                                                              children: <TextSpan>[
                                                            TextSpan(
                                                                text: 'Is '),
                                                            TextSpan(
                                                                text:
                                                                    'Dirty Oil ',
                                                                style: TextStyle(
                                                                    color:
                                                                        pinkColor)),
                                                            TextSpan(
                                                                text:
                                                                    'properly identified as')
                                                          ]))
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 6),
                                                    child: Row(
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        pinkColor),
                                                                children: <TextSpan>[
                                                              TextSpan(
                                                                  text:
                                                                      'Dirty Oil Problem '),
                                                              TextSpan(
                                                                  text: '?',
                                                                  style: TextStyle(
                                                                      color:
                                                                          maincolor))
                                                            ]))
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Divider(
                                color: Color(0xFF9BA6BE),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        color: green.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AccepInvitation()));
                                          },
                                          child: Center(
                                            child: Text(
                                              'Accept',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        color: pinkColor.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Center(
                                          child: Text(
                                            'Decline',
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
