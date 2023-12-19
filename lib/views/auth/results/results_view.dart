import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/card_containers.dart';
import 'package:speak_logic_poll/components/topcontainer.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ResultsView extends StatefulWidget {
  const ResultsView({super.key});

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            // Topcontainer(
            //   screenName: 'ResultView',
            //   showimg6: false,
            //   showimg7: false,
            //   showimg2second: false,
            //   showimg3second: false,
            //   showimg6second: true,
            //   showimg5second: false,
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
            //   img6second: 'assets/images/menublue.svg',
            // ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 5),
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
                initialLabelIndex: i,
                totalSwitches: 3,
                labels: ['Results', 'My Results', 'My Polls'],
                onToggle: (index) {
                  setState(() {
                    i = index!;
                  });
                },
              ),
            ),
            i == 2
                ? CardContainers(
                    showConainerCenter: true,
                    checkIconImg: false,
                    checkText: false,
                    showContainer1: true,
                    showContainer2: false,
                    showContainer3: false,
                    hading: 'Abcd Poll',
                    subhading: 'Entity in Question:',
                    calendarimg: 'assets/images/calendar.svg',
                    mapimg: 'assets/images/map.svg',
                    calendartext: '28.10.23 - 30.10.23',
                    maptext: 'USA',
                    containertext1: 'Problem',
                    containertext2: 'Solution',
                    containertext3: 'Solution Function',
                    containertext4: 'Problem Name',
                    containertext5: 'identified properly',
                    votestext1: '150',
                    votestext2: 'votes',
                    votestext3: '50',
                    eyeimg: 'assets/images/eye.svg',
                    eyetext: 'Public',
                    checkimg: 'assets/images/check.svg',
                    myvoteschecktext: 'My Vote: YES',
                    checkVotes: 'yes',
                  )
                : i == 1
                    ? CardContainers(
                        showConainerCenter: false,
                        checkIconImg: true,
                        checkText: true,
                        showContainer1: true,
                        showContainer2: true,
                        showContainer3: true,
                        hading: 'Abcd Poll',
                        subhading: 'Entity in Question:',
                        calendarimg: 'assets/images/calendar.svg',
                        mapimg: 'assets/images/map.svg',
                        calendartext: '28.10.23 - 30.10.23',
                        maptext: 'USA',
                        containertext1: 'Problem',
                        containertext2: 'Solution',
                        containertext3: 'Solution Function',
                        containertext4: 'Problem Name',
                        containertext5: 'identified properly',
                        votestext1: '150',
                        votestext2: 'votes',
                        votestext3: '50',
                        eyeimg: 'assets/images/eyeoff.svg',
                        eyetext: 'Private',
                        checkimg: 'assets/images/check.svg',
                        myvoteschecktext: 'My Vote: YES',
                        checkVotes: 'yes',
                      )
                    : CardContainers(
                        showConainerCenter: false,
                        checkIconImg: false,
                        checkText: false,
                        showContainer1: true,
                        showContainer2: true,
                        showContainer3: true,
                        hading: 'Abcd Poll',
                        subhading: 'Entity in Question:',
                        calendarimg: 'assets/images/calendar.svg',
                        mapimg: 'assets/images/map.svg',
                        calendartext: '28.10.23 - 30.10.23',
                        maptext: 'USA',
                        containertext1: 'Problem',
                        containertext2: 'Solution',
                        containertext3: 'Solution Function',
                        containertext4: 'Problem Name',
                        containertext5: 'identified properly',
                        votestext1: '150',
                        votestext2: 'votes',
                        votestext3: '50',
                        eyeimg: 'assets/images/eye.svg',
                        eyetext: 'Public',
                        checkimg: 'assets/images/check.svg',
                        myvoteschecktext: 'My Vote: YES',
                        checkVotes: 'yes',
                      ),
          ],
        ),
      )),
    );
  }
}
