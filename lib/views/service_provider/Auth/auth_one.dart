// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/widgets/back_button.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'auth_two.dart';
import 'components/form_build.dart';

class AuthOne extends StatefulWidget {
  const AuthOne({Key key}) : super(key: key);

  @override
  State<AuthOne> createState() => _AuthOneState();
}

RegExp regExp = new RegExp(p);
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class _AuthOneState extends State<AuthOne> {
  TextEditingController _emailController = TextEditingController();
  bool _isEnabled = false;
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
                child: Text("What's your\nemail\naddress?",
                    style: heading1(context).copyWith(
                      color: kWhiteColor,
                      fontSize: 35,
                    )),
              ),
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "YOUR EMAIL",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _emailController,
                      labelText: "Email Address",
                      icon: Icons.clear,
                      onChanged: (value) {
                        setState(() {
                          if(_emailController.text.length == null || !regExp.hasMatch(value)){
                            _isEnabled = false;
                          } else{
                            _isEnabled = true;
                          }
                          
                        });
                      },
                    ),
                    kLargeVerticalSpacing,
                    Center(
                      child: PrimaryButton(
                        text: "Continue with Email",
                        textColor: kWhiteColor,
                        press: _isEnabled == true ? () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AuthTwo(email: _emailController.text,)));
                        } : null,
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
