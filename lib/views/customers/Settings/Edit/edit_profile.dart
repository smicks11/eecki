import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/service_provider/Auth/components/form_build.dart';
import 'package:eecki/widgets/back_button.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _phoneNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Edit",
                    style: heading1(context).copyWith(fontSize: 25),
                  )),
                  kLargeVerticalSpacing,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kPad),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        "Change number".toUpperCase(),
                        style: bodySmallText(context)
                            .copyWith(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      kTinyVerticalSpacing,
                      FormBuild(
                        controller: _phoneNumController,
                        labelText: "Enter phone number",
                        icon: Icons.clear,
                      ),                      
                      ],
                    ),
                  ),
                  Spacer(),
                   Center(
                        child: PrimaryButton(
                          text: "APPLY",
                          textColor: kWhiteColor,
                          press: () {},
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
            ],
          )),
    );
  }
}
