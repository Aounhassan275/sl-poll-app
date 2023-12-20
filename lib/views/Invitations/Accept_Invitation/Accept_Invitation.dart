import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/Invitations/Save_Invitation/Save_Invitation.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Invitation/Send_Invitation.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_View.dart';

class AccepInvitation extends StatefulWidget {
  const AccepInvitation({super.key});

  @override
  State<AccepInvitation> createState() => _AccepInvitationState();
}

class _AccepInvitationState extends State<AccepInvitation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: maincolor),
          child: SvgPicture.asset(
            'assets/images/background-ellipse.svg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 12, bottom: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/edit.svg'),
                            Text(
                              'View Note',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.58,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    height: 1.5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(text: 'Is '),
                                  TextSpan(
                                      text: 'Dirty Oil \n',
                                      style: TextStyle(color: pinkColor)),
                                  TextSpan(text: 'properly identified as\n'),
                                  TextSpan(
                                      text: 'Dirty Oil Problem',
                                      style: TextStyle(color: pinkColor)),
                                  TextSpan(text: ' ?'),
                                ])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SaveInvitation()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.38,
                                height: 57,
                                decoration: BoxDecoration(
                                    color: pinkColor.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.38,
                                height: 57,
                                decoration: BoxDecoration(
                                    color: violet.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
