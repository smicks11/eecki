// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Builder(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              bottom: TabBar(
                  indicatorColor: kPrimaryColor,
                  indicatorWeight: 1,
                  tabs: [
                    Tab(
                      child: Text(
                        "Gigs",
                        style: bodySmallText(context),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sellers",
                        style: bodySmallText(context),
                      ),
                    ),
                  ]),
              title: TextField(
                cursorColor: kPrimaryColor,
                style: TextStyle(
                  color: kWhiteColor,
                ),
                decoration: InputDecoration(
                  hintText: "Search services",
                  hintStyle: TextStyle(
                    color: kWhiteColor.withOpacity(0.4),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            body: SingleChildScrollView(),
          );
        }));
  }
}
