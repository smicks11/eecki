// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kPad,
        vertical: kPad / 2,
      ),
      decoration: BoxDecoration(
        color:bgColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor),
            SizedBox(width: kPad),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kPad * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: kWhiteColor
                          .withOpacity(0.64),
                    ),
                    SizedBox(width: kPad / 4),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: kWhiteColor),
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: kWhiteColor
                          .withOpacity(0.64),
                    ),
                    SizedBox(width: kPad / 4),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: kWhiteColor
                          .withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
