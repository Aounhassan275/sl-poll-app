import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_logic_poll/components/divider.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/Invitations/Create_New_Invitations/create_Invitations_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

enum ProductTypeEnum1 { Country, WorldWide }

class SendInvitation extends StatefulWidget {
  const SendInvitation({Key? key}) : super(key: key);
  @override
  State<SendInvitation> createState() => _SendInvitationState();
}

class _SendInvitationState extends State<SendInvitation> {
  ProductTypeEnum1? _productTypeEnum1;

  String? selectedValue;
  String _selectedState = 'New York';
  String _selectedCity = 'Miami';
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
                      MaterialPageRoute(
                          builder: (context) => CreateNewInvitation()),
                    );
                  },
                  child: Container(
                      height: 33,
                      width: 33,
                      child: SvgPicture.asset(
                        'assets/images/left_arrow.svg',
                      )),
                ),
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
            iconTheme: IconThemeData(
              color: Colors.white,
            )),
        drawer: Drawer(child: DrawerScreenView()),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: Container(
              color: maincolor,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/Ellipse.svg',
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
                            'Search User',
                            style: TextStyle(
                              color: Color(0xFFF2F8FF),
                              fontSize: 26,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                            ),
                          )
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
                                    const EdgeInsets.only(top: 40, bottom: 8),
                                child: CustomDivider(
                                  name: 'User name',
                                  startingwidth:
                                      MediaQuery.of(context).size.width * 0.02,
                                  endingwidth:
                                      MediaQuery.of(context).size.width * 0.6,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: grey),
                                  filled: true,
                                  fillColor: lightGrey,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 18),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 24, bottom: 14),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 14),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomDivider(
                                              name: 'Location',
                                              startingwidth:
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.02,
                                              endingwidth:
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.68),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Transform.scale(
                                                  scale: 1.2,
                                                  child: Radio(
                                                    value: ProductTypeEnum1
                                                        .Country,
                                                    groupValue:
                                                        _productTypeEnum1,
                                                    visualDensity:
                                                        VisualDensity(
                                                            vertical: -1,
                                                            horizontal: -1),
                                                    activeColor:
                                                        Color(4283908795),
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _productTypeEnum1 =
                                                            value;
                                                      });
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'State',
                                                  style: TextStyle(
                                                    color: Color(0xFF2E1E88),
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: lightGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                width: 180,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 70),
                                                  child: Directionality(
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    child: DropdownButton(
                                                        icon: SvgPicture.asset(
                                                            'assets/images/chevron-down.svg'),
                                                        value: _selectedState,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: maincolor),
                                                        iconSize: 24,
                                                        dropdownColor:
                                                            Color(0xFFF5F4F9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        underline: SizedBox(),
                                                        items: [
                                                          DropdownMenuItem(
                                                              value: 'New York',
                                                              child: Text(
                                                                  'New York')),
                                                          DropdownMenuItem(
                                                              value: 'Accepted',
                                                              child: Text(
                                                                  'Accepted')),
                                                        ],
                                                        onChanged: (value) {
                                                          setState(() {
                                                            _selectedState =
                                                                value as String;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 14),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Transform.scale(
                                                    scale: 1.2,
                                                    child: Radio(
                                                      value: ProductTypeEnum1
                                                          .WorldWide,
                                                      groupValue:
                                                          _productTypeEnum1,
                                                      visualDensity:
                                                          VisualDensity(
                                                              vertical: -1,
                                                              horizontal: -1),
                                                      activeColor:
                                                          Color(4283908795),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _productTypeEnum1 =
                                                              value;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'City',
                                                    style: TextStyle(
                                                      color: Color(0xFF2E1E88),
                                                      fontSize: 16,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 92),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: lightGrey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      width: 180,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 70),
                                                        child: Directionality(
                                                          textDirection:
                                                              TextDirection.rtl,
                                                          child: DropdownButton(
                                                              icon: SvgPicture
                                                                  .asset(
                                                                      'assets/images/chevron-down.svg'),
                                                              value:
                                                                  _selectedCity,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      maincolor),
                                                              iconSize: 24,
                                                              dropdownColor:
                                                                  Color(
                                                                      0xFFF5F4F9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              underline:
                                                                  SizedBox(),
                                                              items: [
                                                                DropdownMenuItem(
                                                                    value:
                                                                        'Miami',
                                                                    child: Text(
                                                                        'Miami')),
                                                                DropdownMenuItem(
                                                                    value:
                                                                        'Accepted',
                                                                    child: Text(
                                                                        'Accepted')),
                                                              ],
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  _selectedCity =
                                                                      value
                                                                          as String;
                                                                });
                                                              }),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40, bottom: 8),
                                          child: CustomDivider(
                                            name: 'User found',
                                            startingwidth:
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                            endingwidth: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        color: lightpurple),
                                                    child: Center(
                                                      child: Text(
                                                        'JS',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Jane Smith',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: maincolor),
                                                        ),
                                                        Text(
                                                          'New York, Buffalo',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: textcolor),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                                width: 130,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: maincolor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                  child: Text(
                                                    'Invite',
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white),
                                                  ),
                                                ))
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          color: lightpurple),
                                                      child: Center(
                                                        child: Text(
                                                          'JS',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'Jane Smith',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    maincolor),
                                                          ),
                                                          Text(
                                                            'New York, Buffalo',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    textcolor),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  width: 130,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: maincolor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Text(
                                                      'Invite',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          color: lightpurple),
                                                      child: Center(
                                                        child: Text(
                                                          'JS',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'Jane Smith',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    maincolor),
                                                          ),
                                                          Text(
                                                            'New York, Buffalo',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    textcolor),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  width: 130,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Text(
                                                      'Invited',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
      ),
    );
  }
}
