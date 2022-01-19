// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/custom_text.dart';
import 'package:eecki/utils/shared_prefs/user_prefs.dart';
import 'package:eecki/views/customers/Auth/customer_login.dart';
import 'package:eecki/views/customers/Auth/customer_login_two.dart';
import 'package:eecki/views/service_provider/welcome_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wel_bg.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CustomText(
                    text: "Eecki",
                    size: 34,
                    color: kWhiteColor,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Text("Freelance services on Demand!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: FlatButton(
                    child: Text(
                      "Find a service".toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {
                      UserPreferences.getFName() == null ||
                              UserPreferences.getEmail() == null
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => CustomerLoginTwo()))
                          : Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => CustomerLogin()));
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: kPrimaryColor),
                      // color: primaryColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: FlatButton(
                    child: Text(
                      "Become a seller".toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => OnBoarding()));
                    },
                    textColor: kWhiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
