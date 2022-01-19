// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import 'components/slide_one.dart';
class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List slides = [
    BuildSlides(
      image: "slide_1.png",
      desc: "Got Skills?",
    ),
    BuildSlides(
      image: "slide_2.png",
      desc: "Looking to engage a service provider?",
    ),
    BuildSlides(
      image: "slide_3.png",
      desc: "Digital or hands-on services.",
    ),
    BuildSlides(
      image: "slide_4.png",
      desc: "All assessible from the comfort of your phone.",
    ),
    // BuildSlideWithForm(),
    // BuildSlideWithSignIn(),
  ];
  int currentIndex = 0;
  PageController _controller;
  Timer _pageAnimationTimer;

  void _animateSlides() {
    if (_controller == null) return;
    if (currentIndex < 4) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void initState() {
    _pageAnimationTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _animateSlides();
    });
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageAnimationTimer?.cancel();
    _pageAnimationTimer = null;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: slides.length,
                  itemBuilder: (context, index) {
                    return slides[index];
                  }),
            ),
            currentIndex == 4
                ? buildReadyButton()
                : currentIndex == 5
                    ? buildAuthButtons()
                    : Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            1,
                            (index) => GestureDetector(
                              
                              child: buildIndicator(index, context)),
                          ),
                        ),
                      ),
            kExtraLargeVerticalSpacing
          ],
        ),
      ),
    );
  }

  Container buildReadyButton() {
    return Container(
        alignment: Alignment.center,
        height: kPad * 4,
        width: kPad * 4,
        // width: currentIndex == index ? 25 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: Text(
          "Ready",
          style: heading2(context).copyWith(
            color: kWhiteColor,
          ),
        ));
  }

  Container buildAuthButtons() {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: kPad),
            decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: FlatButton(
              onPressed: () {},
              child: Text("sign in".toUpperCase(),
                  style: labelText(context).copyWith(
                    fontSize: 12,
                  )),
            ),
          ),
          SizedBox(
            height: kPad,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: kPad),
            child: PrimaryButton(
              text: "sign up".toUpperCase(),
              color: kPrimaryColor,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }

  // container created for indicator
  Stack buildIndicator(int index, BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: kPad * 4,
          width: kPad * 4,
          child: CircularProgressIndicator(
            backgroundColor: kTextFieldFillColor,
            valueColor: AlwaysStoppedAnimation(kPrimaryColor),
            value: currentIndex == 0
                ? 0.25
                : currentIndex == 1
                    ? 0.50
                    : currentIndex == 2
                        ? 0.75
                        : currentIndex == 3
                            ? 1.0
                            : 1.0,
            strokeWidth: 2,
          ),
        ),
        Container(
          height: kPad * 2.5,
          width: kPad * 2.5,
          // width: currentIndex == index ? 25 : 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: Icon(
            Icons.arrow_forward,
            color: kWhiteColor,
            size: 16,
          ),
        ),
      ],
    );
  }
}