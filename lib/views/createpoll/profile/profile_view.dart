import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/inputfield.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isProfilePrivate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                padding: EdgeInsets.fromLTRB(20, 40, 20, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.drawer);
                      },
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/left_arrow.svg',
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Color(4289110256),
                              width: 1,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/images/drawerprofile.svg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'ADD PHOTO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '..........',
                      style: TextStyle(color: maincolor),
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
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          InputField(
                            fillcolor: lightGrey,
                            hint: 'Jane Smith',
                          ),
                          InputField(
                            fillcolor: lightGrey,
                            hint: 'janesmith@gmail.com',
                          ),
                          SizedBox(height: 12),
                          CSCPicker(
                            layout: Layout.vertical,
                            dropdownHeadingStyle: TextStyle(height: 54 / 12),
                            dropdownDecoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: lightGrey,
                              border: Border.all(color: lightGrey, width: 10),
                            ),
                            disabledDropdownDecoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: lightGrey,
                                border:
                                    Border.all(color: lightGrey, width: 10)),
                            dropdownDialogRadius: 20,
                            flagState: CountryFlag.DISABLE,
                            onCountryChanged: (value) {
                              setState(() {
                                // var countryValue = value;
                                maincolor;
                                FontWeight.w500;
                              });
                            },
                            onStateChanged: (value) {
                              setState(() {
                                // stateValue = value;
                                maincolor;
                                FontWeight.w500;
                              });
                            },
                            onCityChanged: (value) {
                              setState(() {
                                // cityValue = value;
                                maincolor;
                                FontWeight.w500;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 6),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Keep your profile private',
                                    style: TextStyle(
                                      color: Color(0xFF251F67),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.328),
                                  PlatformSwitch(
                                    value: isProfilePrivate,
                                    onChanged: (value) {
                                      setState(() {
                                        isProfilePrivate = value;
                                      });
                                    },
                                    customColor: Color.fromRGBO(52, 199, 89, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: MainButton(
                              title: 'Logout',
                              color: maincolor,
                              color1: white,
                              onPressed: () {
                                Get.toNamed(AppRoutes.signin);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: MainButton(
                              title: 'Save',
                              color: violet,
                              onPressed: () {
                                Get.toNamed(AppRoutes.wellcome);
                              },
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
    );
  }
}

class PlatformSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color customColor;

  PlatformSwitch({
    required this.value,
    required this.onChanged,
    required this.customColor,
  });

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: customColor,
          )
        : Switch(
            value: value,
            onChanged: onChanged,
            activeTrackColor: customColor.withOpacity(0.5),
            activeColor: customColor,
          );
  }
}
