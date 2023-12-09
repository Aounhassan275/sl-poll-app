import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:speak_logic_poll/components/drawerprofile_items.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class DrawerScreenView extends StatefulWidget {
  const DrawerScreenView({Key? key});

  @override
  State<DrawerScreenView> createState() => _DrawerScreenViewState();
}

class _DrawerScreenViewState extends State<DrawerScreenView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              color: maincolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 74,
                      width: 74,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(4289110256), width: 1),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/drawerprofile.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                      color: Color(4294113535),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'usermail@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.profile);
                  },
                  child: DrawerItems(
                    picture: SvgPicture.asset(
                      'assets/images/profile.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    title: 'Profile',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(AppRoutes.profile);
                  },
                  child: DrawerItems(
                    picture: SvgPicture.asset(
                      'assets/images/search.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    title: 'Search',
                  ),
                ),
                DrawerItems(
                  picture: SvgPicture.asset(
                    'assets/images/file-search.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  title: 'Browse',
                ),
                GestureDetector(
                   onTap: () {
                      Get.toNamed(AppRoutes.help);
                    },
                  child: DrawerItems(
                    picture: SvgPicture.asset(
                      'assets/images/interrogation.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    title: 'Help',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
