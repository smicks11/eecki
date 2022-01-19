// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eecki/core/data/data.dart';
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kPad),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Tailor swift services 👋",
                style: bodySmallText(context),
              ),
              kLargeVerticalSpacing,
              InkWell(
                onTap: () {

                },
                child: OptionBox(
                  optionName: "My services",
                  count: 16,
                  countColor: kPrimaryColor.withOpacity(0.7),
                  icon: Icons.schedule,
                  iconOne: kPrimaryColor,
                ),
              ),
              kSmallVerticalSpacing,
              InkWell(
                onTap: (){},
                child: OptionBox(
                  optionName: "Orders",
                  count: 0,
                  countColor: kPrimaryColor.withOpacity(0.7),
                  icon: Icons.message,
                  iconOne: kPrimaryColor,
                ),
              ),
              kLargeVerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ratings and Reviews",
                    style: bodyNormalText(context),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: bodyTinyText(context)
                            .copyWith(color: kPrimaryColor),
                      ))
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, int index){
                  return ReviewBox(
                    name: reviewList[index].Name,
                    comment: reviewList[index].comment,
                    imgURL: reviewList[index].image,
                  );
                }, 
                separatorBuilder: (ctx, int){
                  return Divider(
                    color: kWhiteColor.withOpacity(0.4),
                  );
                }, 
                itemCount: reviewList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text("Dashboard", style: heading1(context)),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/sp_6.jpg"),
        )
      ],
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
    );
  }
}

class ReviewBox extends StatelessWidget {
  final String name;
  final String comment;
  final String imgURL;
  const ReviewBox({
    Key key, this.name, this.comment, this.imgURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$name gave a review",
            style: bodyTinyText(context).copyWith(
              color: kWhiteColor.withOpacity(0.2),
            ),
          ),
          kSmallVerticalSpacing,
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/$imgURL"),
            ),
            title: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    name,
                    style: bodySmallText(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 10,
                    ),
                  ],
                )
              ],
            ),
            subtitle: Text(comment, style: bodyTinyText(context).copyWith(color: kWhiteColor.withOpacity(0.2)),),
          ),
        ],
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  final String optionName;
  final int count;
  final Color countColor;
  final IconData icon;
  final Color iconOne;
  const OptionBox({
    Key key,
    @required this.optionName,
    @required this.count,
    @required this.countColor,
    @required this.icon, this.iconOne,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPad, vertical: 12),
      decoration: BoxDecoration(
        color: kWhiteColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(kPad / 2),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: faintDark,
                    borderRadius: BorderRadius.circular(kPad / 4),
                  ),
                  child: Icon(
                    icon,
                    color: iconOne,
                  ),
                ),
                kSmallHorizontalSpacing,
                Text(
                  optionName,
                  style: bodyNormalText(context),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                count.toString(),
                style: bodyTinyText(context).copyWith(
                    color: countColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              kSmallHorizontalSpacing,
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
