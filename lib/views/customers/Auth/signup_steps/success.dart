// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Home/index.dart';
import 'package:eecki/views/service_provider/Dashboard/index.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../page_view_screen.dart';


class CustomerSignUpSuccess extends StatelessWidget {
  const CustomerSignUpSuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Text("Yay 🎉\nRegistration\ncompleted!",
                    style: heading1(context).copyWith(
                      color: kWhiteColor,
                      fontSize: 30,
                    )),
              ),
              kSmallVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The high quality service you expect, on-repeat, hassle-free, every time.",
                      style:
                          bodyTinyText(context).copyWith(color: Colors.white30),
                    ),
                    kMediumVerticalSpacing,
                    Center(
                      child: Container(
                        child: Lottie.asset(
                          'assets/lottie/64787-success.json',
                          height: 200.0,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                    ),
                    kLargeVerticalSpacing,
                    Center(
                      child: PrimaryButton(
                        text: "Begin your tour 🤩",
                        textColor: kWhiteColor,
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => PageViewScreen()));
                        },
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
