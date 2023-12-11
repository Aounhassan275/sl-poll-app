import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/components/card_containers_polls.dart';
import 'package:speak_logic_poll/components/topcontainer.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:filter_list/filter_list.dart';

class PollsView extends StatefulWidget {
  const PollsView({super.key});

  @override
  State<PollsView> createState() => _PollsViewState();
}

class _PollsViewState extends State<PollsView> {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    // Add more items as needed
  ];

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Filter Items'),
          content: SingleChildScrollView(
            child: Column(
              children: items.map((String item) {
                return CheckboxListTile(
                  title: Text(item),
                  value: false, // Add logic to manage checked/unchecked state
                  onChanged: (bool? value) {
                    // Add logic to handle checkbox changes
                  },
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Add logic to apply the filter
                Navigator.of(context).pop();
              },
              child: Text('Apply'),
            ),
            TextButton(
              onPressed: () {
                 Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Topcontainer(
                img1: 'assets/images/listfilter.svg',
                img2: 'assets/images/server.svg',
                img3: 'assets/images/maximize.svg',
                img4: 'assets/images/search.svg',
                img5: 'assets/images/Searchs.svg',
                img6: 'assets/images/menu.svg',
              ),
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
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 260,
                  ),
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return CardContainersPolls(
                        hading: 'Abcd Poll',
                        subhading: 'Entity in Question:',
                        calendarimg: 'assets/images/calendar.svg',
                        mapimg: 'assets/images/map.svg',
                        calendartext: '28.10.23 - 30.10.23',
                        maptext: 'USA',
                        showContainer1: true,
                        showContainer2: true,
                        showContainer3: true,
                        containertext1: 'Problem',
                        containertext2: 'Solution',
                        containertext3: 'Solution Function');
                  }),
             
            ],
          ),
        )),
      ),
    );
  }
}
