// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class PopularService extends StatelessWidget {
  final String image;
  final String name;
  final int index;
  const PopularService({
    Key key,
    this.image,
    this.name,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 0),
      child: Container(
        height: 190,
        width: 150,
        decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  "assets/images/$image",
                  height: 130,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: kPad / 2),
                  alignment: Alignment.centerLeft,
                  height: 60,
                  child: Text(
                    name,
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.w600),
                  ))
            ]),
      ),
    );
  }
}
