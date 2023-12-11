import 'package:flutter/material.dart';
import 'package:speak_logic_poll/components/topcontainer.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class PollsViewBrowse extends StatefulWidget {
  const PollsViewBrowse({super.key});

  @override
  State<PollsViewBrowse> createState() => _PollsViewBrowseState();
}

class _PollsViewBrowseState extends State<PollsViewBrowse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
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
            Container(
              padding: EdgeInsets.only(top: 10,bottom: 10),
             
              child: TextFormField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                   // gapPadding: ,
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Type poll name or/and location",hintStyle: TextStyle(color: Colors.grey),
                  // floatingLabelStyle: const TextStyle(
                  //     height: 4, color: Color.fromARGB(255, 160, 26, 179)),
                  filled: true,
                  //fillColor: Colors.grey[200],
                  fillColor: Colors.grey.withOpacity(0.1),
                  prefixIcon:  Icon(Icons.search,color: Colors.grey,),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
