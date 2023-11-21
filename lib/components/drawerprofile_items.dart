import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
    this.title,
    this.picture,
  });

  final title;
  final picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F9),
        border: Border(
          left: BorderSide(color: Color(0x4C9BA6BE)),
          right: BorderSide(color: Color(0x4C9BA6BE)),
          bottom: BorderSide(width: 1, color: Color(0x4C9BA6BE)),
        ),
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              child: picture,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF241E66),
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
