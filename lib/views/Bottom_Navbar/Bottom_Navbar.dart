// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_View.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';
import 'package:speak_logic_poll/views/home/Home_Screens/home_screen_view.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreenView(),
    PollsView(),
    ResultsView(),
    SendReceiveInvitation(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding:
            const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            selectedFontSize: 11,
            unselectedFontSize: 11,
            currentIndex: _currentIndex,
            backgroundColor: maincolor,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: _currentIndex == 0
                      ? SvgPicture.asset('assets/images/Home-white.svg')
                      : SvgPicture.asset('assets/images/Home-lightgray.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Polls',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: _currentIndex == 1
                      ? SvgPicture.asset('assets/images/Opinion-white.svg')
                      : SvgPicture.asset('assets/images/Opinion-lightgray.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Results',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: _currentIndex == 2
                      ? SvgPicture.asset('assets/images/Rankings-white.svg')
                      : SvgPicture.asset(
                          'assets/images/Rankings-lightgray.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Invitations',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: _currentIndex == 3
                      ? SvgPicture.asset('assets/images/Add-friend-white.svg')
                      : SvgPicture.asset(
                          'assets/images/Add friend-lightgray.svg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
