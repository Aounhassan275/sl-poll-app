// ignore_for_file: prefer_const_constructors

import 'package:demoapp/all_doctors.dart';
import 'package:demoapp/find_doctor.dart';
import 'package:demoapp/welcomeDoctor.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
   
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset('assets/images/home.png'),
          ),
          BottomNavigationBarItem(
            label: 'My Appointments',
            icon: Image.asset('assets/images/calender.png'),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Image.asset('assets/images/street-view.png'),
          ),
        ],
      ),
    );
  }
}
