// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/service_provider/Dashboard/index.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'kyc_brief.dart';

class KYCINTRO extends StatelessWidget {
  const KYCINTRO({Key key}) : super(key: key);

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
                child: Text("Yay 🎉\nLet's verify\nyour identity!",
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
                      "To remove all limits on your account, we need to verify your identity.",
                      style:
                          bodyTinyText(context).copyWith(color: Colors.white30),
                    ),
                    kMediumVerticalSpacing,
                    Center(
                      child: Container(
                        child: Lottie.asset(
                          'assets/lottie/88222-id-card-profile-card.json',
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
                        text: "Verify ID",
                        textColor: kWhiteColor,
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => KYCBrief()));
                        },
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                    kExtraSmallVerticalSpacing,
                    Center(child: TextButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => Dashboard()));
                    }, child: Text("Skip verification", style: bodySmallText(context),)))
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
