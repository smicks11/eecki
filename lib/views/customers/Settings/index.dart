// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:eecki/services/auth_service.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

import 'Edit/edit_profile.dart';
import 'history/history.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kPad / 2),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Account",
                      style: heading1(context).copyWith(fontSize: 25),
                    )),
                kLargeVerticalSpacing,
                Column(
                  children: [
                    Center(
                      child: Stack(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/photography.jpg"),
                              radius: 40,
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.camera_enhance,
                                    size: 14,
                                    color: kWhiteColor,
                                  ),
                                ))
                          ]),
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "James Peter",
                      style: bodyNormalText(context).copyWith(fontSize: 18),
                    )
                  ],
                ),
                kLargeVerticalSpacing,
                Text(
                  "Profile Settings",
                  style: bodyNormalText(context)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                kSmallVerticalSpacing,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    padding: EdgeInsets.all(kPad),
                    decoration: BoxDecoration(
                        color: kWhiteColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => EditProfile()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: kPrimaryColor,
                                    size: 16,
                                  ),
                                  kSmallHorizontalSpacing,
                                  Text(
                                    "Phone Number",
                                    style: bodySmallText(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "+234 810 770 2943",
                                    style: bodySmallText(context).copyWith(
                                        color: kWhiteColor.withOpacity(0.7)),
                                  ),
                                  kSmallHorizontalSpacing,
                                  Icon(Icons.arrow_forward_ios,
                                      size: 16,
                                      color: kWhiteColor.withOpacity(0.7)),
                                ],
                              )
                            ],
                          ),
                        ),
                        kTinyVerticalSpacing,
                        Divider(
                          color: kWhiteColor.withOpacity(0.4),
                        ),
                        kTinyVerticalSpacing,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: kPrimaryColor,
                                  size: 18,
                                ),
                                kSmallHorizontalSpacing,
                                Text(
                                  "Email",
                                  style: bodySmallText(context),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "smicks@eecki.com",
                                  style: bodySmallText(context).copyWith(
                                      color: kWhiteColor.withOpacity(0.7)),
                                ),
                                kSmallHorizontalSpacing,
                                Icon(Icons.arrow_forward_ios,
                                    size: 18,
                                    color: kWhiteColor.withOpacity(0.7)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                kLargeVerticalSpacing,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => HistoryScreen()));
                      },
                      child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: kWhiteColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.history,
                                      color: kPrimaryColor,
                                      size: 18,
                                    ),
                                    kSmallHorizontalSpacing,
                                    Text(
                                      "History",
                                      style: bodySmallText(context),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.arrow_forward_ios,
                                        size: 16,
                                        color: kWhiteColor.withOpacity(0.7)),
                                  ],
                                )
                              ],
                            ),
                          ])),
                    )),
                kLargeVerticalSpacing,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.privacy_tip,
                                    color: kPrimaryColor,
                                    size: 18,
                                  ),
                                  kSmallHorizontalSpacing,
                                  Text(
                                    "Privacy policy",
                                    style: bodySmallText(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      size: 16,
                                      color: kWhiteColor.withOpacity(0.7)),
                                ],
                              )
                            ],
                          ),
                          kTinyVerticalSpacing,
                          Divider(
                            color: kWhiteColor.withOpacity(0.4),
                          ),
                          kTinyVerticalSpacing,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.move_to_inbox_sharp,
                                    color: kPrimaryColor,
                                    size: 18,
                                  ),
                                  kSmallHorizontalSpacing,
                                  Text(
                                    "Terms and conditions",
                                    style: bodySmallText(context),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      size: 16,
                                      color: kWhiteColor.withOpacity(0.7)),
                                ],
                              )
                            ],
                          ),
                          kTinyVerticalSpacing,
                        ]))),
                kLargeVerticalSpacing,
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: (){
                        _authService.signOut(context);
                      },
                      child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: kWhiteColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.history,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    kSmallHorizontalSpacing,
                                    Text(
                                      "Logout",
                                      style: bodySmallText(context)
                                          .copyWith(color: Colors.red),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.arrow_forward_ios,
                                        size: 16,
                                        color: kWhiteColor.withOpacity(0.7)),
                                  ],
                                )
                              ],
                            ),
                          ])),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
