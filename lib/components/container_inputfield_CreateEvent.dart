import 'package:flutter/material.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class CreateEventInputField extends StatefulWidget {
  const CreateEventInputField({
    super.key,
    required this.name,
  });
  final String name;
  @override
  State<CreateEventInputField> createState() => _CreateEventInputFieldState();
}

class _CreateEventInputFieldState extends State<CreateEventInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: lightGrey),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: widget.name,
                    hintStyle: TextStyle(
                      color: Color(0xFF9BA6BE),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
