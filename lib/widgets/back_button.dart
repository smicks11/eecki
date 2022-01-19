// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(kPad - 3),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.1,
                color: kWhiteColor
              ),
              borderRadius: BorderRadius.circular(kPad / 4)
            ),
            child: Icon(Icons.arrow_back, size: 16, color: kWhiteColor,),
          ),
        ),
      ),
    );
  }
}