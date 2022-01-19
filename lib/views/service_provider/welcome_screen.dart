// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/custom_text.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/widgets/primary_button.dart';
import 'package:flutter/material.dart';

// import '../Onboarding/slide_wrapper.dart';
import 'Auth/auth_one.dart';
import 'Auth/login_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Eecki",
                      size: 32,
                      color: kWhiteColor,
                    ),
                    CustomText(
                      text: "Connect with top service providers",
                      size: 12,
                      color: kWhiteColor.withOpacity(0.2),                        
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(kPad * 2),
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/img_1.png"
                ),
              ),
              Spacer(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryButton(
                     text: "Get Started",
                     textColor: kWhiteColor,
                     press: () {
                       // Navigator.pushNamed(context, '/signUp');
                       Navigator.push(context, MaterialPageRoute(builder: (ctx) => AuthOne()));
                     },
                     width: MediaQuery.of(context).size.width * 0.8,
                        ),
                    kSmallHorizontalSpacing,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: bodySmallText(context).copyWith(
                            color: kWhiteColor,
                          )
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx) => LoginScreen(email: "moremi@mail.com",)));
                        }, child: Text("Sign In", style: bodySmallText(context).copyWith(color: kPrimaryColor),))
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}