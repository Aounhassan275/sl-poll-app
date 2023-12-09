import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/inputfield.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
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
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        'assets/images/left_arrow.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                            color: Color(0xFFF2F8FF),
                            fontSize: 26,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 35, top: 30, bottom: 88),
                      child: Container(
                          padding: EdgeInsets.only(left: 24),
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                            color: white,
                          ))),
                          child: Text("Enter your new password below",
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: grey,
                              ))),
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
                            hint: 'Old password',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot password?',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF10256D),
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: InputField(
                              fillcolor: lightGrey,
                              hint: 'New password',
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          InputField(
                            fillcolor: lightGrey,
                            hint: 'Confirm password',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: MainButton(
                              title: 'Saved',
                              color: pinkColor,
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
    );
  }
}
