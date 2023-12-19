import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/components/card_abcd_polls.dart';
import 'package:speak_logic_poll/components/topcontainer.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PollsViewBrowse extends StatefulWidget {
  const PollsViewBrowse({super.key});

  @override
  State<PollsViewBrowse> createState() => _PollsViewBrowseState();
}

class _PollsViewBrowseState extends State<PollsViewBrowse> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        
        child: Column(
          
          children: [
            // Topcontainer(
            //   screenName: 'false',
            //   showimg2second: true,
            //   showimg6: true,
            //   showimg7: true,
            //   showimg3second: true,
            //   showimg6second: true,
            //   showimg5second: true,
            //   img1: 'assets/images/listfilter.svg',
            //   img2: 'assets/images/server.svg',
            //   img3: 'assets/images/maximize.svg',
            //   img4: 'assets/images/search.svg',
            //   img5: 'assets/images/Searchs.svg',
            //   img6: 'assets/images/menu.svg',
            //   img7: 'assets/images/grid.svg',
            //   img5second:'assets/images/Searchwhite.svg',
            //   img2second: 'assets/images/serverblue.svg',
            //   img3second: 'assets/images/maximizeblue.svg',
            //   img6second:'assets/images/menublue.svg',
              
              
            // ),
            Container(
              height: 70,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Type poll name or/and location",
                  hintStyle: TextStyle(color: Colors.grey),
                  // floatingLabelStyle: const TextStyle(
                  //     height: 4, color: Color.fromARGB(255, 160, 26, 179)),
                  filled: true,
                  //fillColor: Colors.grey[200],
                  fillColor: Colors.grey.withOpacity(0.1),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: ToggleSwitch(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height * 0.08,
                fontSize: 16.0,
                cornerRadius: 12.0,
                activeBgColor: [Colors.blue[900]!],
                activeFgColor: white,
                inactiveFgColor: white,
                inactiveBgColor: maincolor,
                activeBorders: [
                  Border.all(
                    color: maincolor,
                    width: 3.0,
                  ),
                ],
                initialLabelIndex: 0,
                totalSwitches: 2,
                labels: [
                  'All Polls',
                  'My Polls',
                ],
                onToggle: (index) {
                  // setState(() {
                  //  // i = index!;
                  // });
                },
              ),
            ),
            ////////////////////////////////////////
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("A",
                              style: TextStyle(
                                color: maincolor,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey.withOpacity(0.1),
                        thickness: 2,
                      ),
                      CardAbcdPollls(
                          showContainer1: true,
                          showContainer2: true,
                          showContainer3: true),
                      Divider(
                        height: 2,
                        color: Colors.grey.withOpacity(0.1),
                        thickness: 2,
                      ),
                      CardAbcdPollls(
                        showContainer1: true,
                        showContainer2: true,
                        showContainer3: false,
                      ),
                      Row(
                        children: [
                          Text("B",
                              style: TextStyle(
                                color: maincolor,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey.withOpacity(0.1),
                        thickness: 2,
                      ),
                      CardAbcdPollls(
                          showContainer1: true,
                          showContainer2: true,
                          showContainer3: true),
                      Divider(
                        height: 2,
                        color: Colors.grey.withOpacity(0.1),
                        thickness: 2,
                      ),
                      CardAbcdPollls(
                          showContainer1: true,
                          showContainer2: true,
                          showContainer3: false),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
