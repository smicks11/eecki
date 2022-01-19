// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:eecki/core/data/data.dart';
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Search/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/build_top_rated.dart';
import 'components/popular_service.dart';
import 'components/service_provider_slider.dart';
// import 'components/slider.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({Key key}) : super(key: key);

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome>
    with SingleTickerProviderStateMixin {
  bool switchColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      kLargeVerticalSpacing,
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kPad / 2),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Search()));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: kWhiteColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(kPad / 4),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  Icons.search,
                                  color: kWhiteColor.withOpacity(0.4),
                                ),
                                title: Text(
                                  "What do you need? ⚡",
                                  style: bodyNormalText(context).copyWith(
                                    color: kWhiteColor.withOpacity(0.4),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      kSmallVerticalSpacing,
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kPad / 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Services",
                              style: bodyNormalText(context).copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See All",
                                  style: bodyTinyText(context).copyWith(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                      buildPopularService(),
                      kSmallVerticalSpacing,
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kPad / 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Service providers around me",
                              style: bodyNormalText(context).copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "See All",
                                  style: bodyTinyText(context).copyWith(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                      kTinyVerticalSpacing,
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildSlider(),
                            SizedBox(
                              height: kPad,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kPad / 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Top Rated",
                                    style: bodyNormalText(context).copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "See All",
                                        style: bodyTinyText(context).copyWith(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ],
                              ),
                            ),
                            topRatedSection(),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Padding headerTwo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPad),
      child: Row(
        children: [
          Text(
            "Top".toUpperCase(),
            style: bodyNormalText(context).copyWith(letterSpacing: 2.0),
          ),
          SizedBox(
            width: kPad / 4,
          ),
          Text("rated".toUpperCase(),
              style: GoogleFonts.dmSans(
                  textStyle: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold))),
          Text("🔥"),
        ],
      ),
    );
  }

  SingleChildScrollView topRatedSection() {
    return SingleChildScrollView(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: TopRated(
                name: topModelList[index].name,
                image: topModelList[index].image,
                location: topModelList[index].location,
                index: index,
              ),
            );
          }),
    );
  }

  Padding headerText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text("Recommended".toUpperCase(),
          style: GoogleFonts.dmSans(
              textStyle: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold))),
    );
  }

  Container buildPopularService() {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: popularServiceList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: PopularService(
                name: popularServiceList[index].name,
                image: popularServiceList[index].image,
                index: index,
              ),
            );
          }),
    );
  }

  Container buildSlider() {
    return Container(
      height: 280,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: serviceProverAround.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: ServiceProviderSlider(
                name: serviceProverAround[index].name,
                bannerImage: serviceProverAround[index].bannerImage,
                image: serviceProverAround[index].image,
                desc: serviceProverAround[index].desc,
                rating: serviceProverAround[index].rating,
                ratingLevel: serviceProverAround[index].ratingLevel,
                price: serviceProverAround[index].price,
                index: index,
              ),
            );
          }),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: kPad),
        child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "assets/images/sp_5.jpg",
            )),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.near_me_sharp,
            size: 20,
            color: kPrimaryColor,
          ),
          color: Colors.black54,
          // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => CartScreen(),))
        ),
      ],
    );
  }
}
