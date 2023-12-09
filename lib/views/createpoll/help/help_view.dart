import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
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
                          'Having any problems?',
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
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, bottom: 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 7,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                        color: Color(0xFF9BA6BE),
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 290,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 7,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        color: Color(0xFF9BA6BE),
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 290,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 7,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Comments',
                                      style: TextStyle(
                                        color: Color(0xFF9BA6BE),
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 260,
                                      child: Divider(
                                        color: lightGrey,
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 105,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: lightGrey),
                                child: Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
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
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: MainButton(
                                  title: 'Send Message',
                                  color: maincolor,
                                  color1: white,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
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
}
