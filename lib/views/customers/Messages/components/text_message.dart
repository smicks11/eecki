import 'package:eecki/core/models/chat_message.dart';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key key,
    this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kPad * 0.75,
        vertical: kPad / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          color: message.isSender
              ? Colors.white
              : kWhiteColor,
        ),
      ),
    );
  }
}
