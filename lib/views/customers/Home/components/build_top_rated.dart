// ignore_for_file: prefer_const_constructors
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/custom_text.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class TopRated extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final int index;
  const TopRated({
    Key key,
    this.image,
    this.name,
    this.location,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: kPad / 2),
      decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(0.1), borderRadius: BorderRadius.circular(kPad)),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kPad),
                child: Image.asset(
                    'assets/images/$image',
                    fit: BoxFit.cover),
              ),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(kPad),
              //     image: DecorationImage(
              //         image: CachedNetworkImage(
              //           imageUrl: image,
              //         ),
              //         fit: BoxFit.cover)),
            ),
            SizedBox(
              width: kPad,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: bodyNormalText(context).copyWith(fontWeight: FontWeight.bold, color: kWhiteColor.withOpacity(0.8)),
                      ),
                      Text(
                          location.toUpperCase(),
                          style: bodyTinyText(context).copyWith(color: kWhiteColor.withOpacity(0.2)),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CustomText(
                        text: "Top Rated",
                        size: 10,
                        color: kWhiteColor.withOpacity(0.7),
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      Icon(
                        Icons.star,
                        color: kPrimaryColor,
                        size: 18,
                      )
                    ],
                  )
                ])
          ],
        ),
      ),
    );
  }
}