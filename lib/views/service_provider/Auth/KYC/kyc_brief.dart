import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'kyc_screen.dart';

class KYCBrief extends StatelessWidget {
  const KYCBrief({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(),
            kMediumVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Text("Increase\nyour limit",
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
                    "You will need to add a valid ID and a real photo of yourself.",
                    style:
                        bodyTinyText(context).copyWith(color: Colors.white30),
                  ),
                  kLargeVerticalSpacing,
                  Column(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(kPad),
                          decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.card_membership,
                            size: 14,
                            color: kWhiteColor,
                          ),
                        ),
                        title: Text(
                          "Have your document ready",
                          style: heading2(context).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "We'll need to take a photo of a valid ID document to verify your identity.",
                          style: bodyTinyText(context).copyWith(
                            color: kWhiteColor.withOpacity(0.2),
                          ),
                        ),
                      ),
                      kLargeVerticalSpacing,
                      ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(kPad),
                          decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.card_membership,
                            size: 14,
                            color: kWhiteColor,
                          ),
                        ),
                        title: Text(
                          "Stay in a well lit area",
                          style: heading2(context).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "We'll need you to record a bright, clear video of your face.",
                          style: bodyTinyText(context).copyWith(
                            color: kWhiteColor.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kLargeVerticalSpacing,
                ],
              ),
            ),
            Spacer(),
            Center(
              child: PrimaryButton(
                text: "Okay",
                textColor: kWhiteColor,
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => KYCScreen()));
                },
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            kLargeVerticalSpacing,
          ],
        ),
      ),
    );
  }
}
