import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/divider.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/createpoll/home/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/home_view.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

enum ProductTypeEnum1 { Country, WorldWide }

class CreatePollStraightView extends StatefulWidget {
  const CreatePollStraightView({Key? key}) : super(key: key);

  @override
  State<CreatePollStraightView> createState() => _CreatePollStraightViewState();
}

class _CreatePollStraightViewState extends State<CreatePollStraightView> {
  ProductTypeEnum? _productTypeEnum;
  ProductTypeEnum1? _productTypeEnum1;

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
                      MaterialPageRoute(builder: (context) => HomeView()),
                    );
                  },
                  child: Container(
                      height: 40,
                      width: 40,
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
                Column(children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Poll Straight',
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
                                name: 'Poll name',
                                startingwidth:
                                    MediaQuery.of(context).size.width * 0.02,
                                endingwidth:
                                    MediaQuery.of(context).size.width * 0.66,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Innovations and the Future',
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
                                  CustomDivider(
                                    name: 'Visibility',
                                    startingwidth:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    endingwidth:
                                        MediaQuery.of(context).size.width *
                                            0.68,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 1.5,
                                            child: Radio(
                                              value:
                                                  ProductTypeEnum.Downloadable,
                                              groupValue: _productTypeEnum,
                                              visualDensity: VisualDensity(
                                                  vertical: -1, horizontal: -1),
                                              activeColor: Color(4283908795),
                                              onChanged: (value) {
                                                setState(() {
                                                  _productTypeEnum = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text(
                                            'Private',
                                            style: TextStyle(
                                              color: Color(0xFF2E1E88),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Row(
                                        children: [
                                          Transform.scale(
                                            scale: 1.5,
                                            child: Radio(
                                              value:
                                                  ProductTypeEnum.Deliverable,
                                              groupValue: _productTypeEnum,
                                              visualDensity: VisualDensity(
                                                  vertical: -1, horizontal: -1),
                                              activeColor: Color(4283908795),
                                              onChanged: (value) {
                                                setState(() {
                                                  _productTypeEnum = value;
                                                });
                                              },
                                            ),
                                          ),
                                          Text(
                                            'Public',
                                            style: TextStyle(
                                              color: Color(0xFF2E1E88),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 24, bottom: 14),
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
                                            endingwidth: MediaQuery.of(context)
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
                                                scale: 1.5,
                                                child: Radio(
                                                  value:
                                                      ProductTypeEnum1.Country,
                                                  groupValue: _productTypeEnum1,
                                                  visualDensity: VisualDensity(
                                                      vertical: -1,
                                                      horizontal: -1),
                                                  activeColor:
                                                      Color(4283908795),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _productTypeEnum1 = value;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                'USA',
                                                style: TextStyle(
                                                  color: Color(0xFF2E1E88),
                                                  fontSize: 16,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Container(
                                              height: 44,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 50),
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFF5F4F9),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              ),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton<String>(
                                                  value: selectedValue,
                                                  items: [
                                                    DropdownMenuItem(
                                                      value: 'Country',
                                                      child: Text('Country'),
                                                    ),
                                                    DropdownMenuItem(
                                                      value: 'City',
                                                      child: Text('City'),
                                                    ),
                                                  ],
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedValue = value!;
                                                    });
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_drop_down),
                                                  iconSize: 24,
                                                  elevation: 16,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                  dropdownColor: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Transform.scale(
                                                  scale: 1.5,
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
                                                  'WorldWide',
                                                  style: TextStyle(
                                                    color: Color(0xFF2E1E88),
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: Container(
                                                height: 44,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 50,
                                                ),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF5F4F9),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                ),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: DropdownButton<String>(
                                                    value: selectedValue,
                                                    items: [
                                                      DropdownMenuItem(
                                                        value: 'Country',
                                                        child: Text('Country'),
                                                      ),
                                                      DropdownMenuItem(
                                                        value: 'City',
                                                        child: Text('City'),
                                                      ),
                                                    ],
                                                    onChanged: (value) {
                                                      setState(() {
                                                        selectedValue = value!;
                                                      });
                                                    },
                                                    icon: Icon(
                                                        Icons.arrow_drop_down),
                                                    iconSize: 24,
                                                    elevation: 16,
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                    dropdownColor: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CustomDivider(
                                        name: 'Start date',
                                        startingwidth:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        endingwidth:
                                            MediaQuery.of(context).size.width *
                                                0.22),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Container(
                                        width: 158,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Center(
                                                child: Text(
                                              '29.9.2023',
                                              style: TextStyle(
                                                color: maincolor,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )),
                                            SvgPicture.asset(
                                                'assets/images/calendar-days.svg'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    CustomDivider(
                                        name: 'End date',
                                        startingwidth:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        endingwidth:
                                            MediaQuery.of(context).size.width *
                                                0.22),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Container(
                                        width: 158,
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Center(
                                                child: Text(
                                              '29.9.2023',
                                              style: TextStyle(
                                                color: maincolor,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )),
                                            SvgPicture.asset(
                                                'assets/images/calendar-days.svg'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: CustomDivider(
                                name: 'Number of participants',
                                startingwidth:
                                    MediaQuery.of(context).size.width * 0.02,
                                endingwidth:
                                    MediaQuery.of(context).size.width * 0.47,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 26, vertical: 18),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F4F9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: [
                                      SvgPicture.asset(
                                          'assets/images/minus.svg')
                                    ]),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '02',
                                    style: TextStyle(
                                      color: Color(0xFF2E1E88),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: [
                                      SvgPicture.asset('assets/images/plus.svg')
                                    ]),
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
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F4F9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Problem',
                                        style: TextStyle(
                                          color: Color(0xFF251F67),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF529EE5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Solution',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F4F9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Solution Function ',
                                        style: TextStyle(
                                          color: Color(0xFF251F67),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Container(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.home);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: MainButton(
                                  title: 'Create poll',
                                  color: maincolor,
                                  color1: white,
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.pollentity);
                                    // Get.toNamed(AppRoutes.manualenter);
                                  },
                                ),
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
