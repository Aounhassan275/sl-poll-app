import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';

class Topcontainer extends StatelessWidget {
  const Topcontainer(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.img4,
      required this.img5,
      required this.img6,
      this.mycolor});
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  final mycolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                    margin: EdgeInsets.only(right: 6),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: SvgPicture.asset(
                      img1,
                      fit: BoxFit.none,
                    )),
              ),
              Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      color: maincolor, borderRadius: BorderRadius.circular(5)),
                  child: SvgPicture.asset(
                    img2,
                    fit: BoxFit.none,
                  )),
              Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: SvgPicture.asset(
                    img3,
                    fit: BoxFit.none,
                  )),
              Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: SvgPicture.asset(
                    img4,
                    fit: BoxFit.none,
                  )),
              Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: SvgPicture.asset(
                    img5,
                    fit: BoxFit.none,
                  )),
            ],
          ),
          Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: SvgPicture.asset(
                img6,
                fit: BoxFit.none,
              )),
        ],
      ),
    );
  }
}
