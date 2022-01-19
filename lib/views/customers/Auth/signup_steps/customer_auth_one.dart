// ignore_for_file: prefer_const_constructors
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Auth/signup_steps/customer_auth_two.dart';
import 'package:eecki/views/service_provider/Auth/components/form_build.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerAuthOne extends StatefulWidget {
  const CustomerAuthOne({Key key}) : super(key: key);

  @override
  State<CustomerAuthOne> createState() => _CustomerAuthOneState();
}

RegExp regExp = new RegExp(p);
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class _CustomerAuthOneState extends State<CustomerAuthOne> {
  bool _validate = false;
  String errorText = "Please enter vald email address";
  TextEditingController _emailController = TextEditingController();
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
                    errorText: _validate == true ? null : errorText,
                    autoFocus: true,
                    onChanged: (value) {
                      value = _emailController.text;
                      setState(() {
                        if (value == null || !regExp.hasMatch(value)) {
                          _validate = false;
                        } else {
                          _validate = true;
                        }
                      });
                    },
                  ),
                  kLargeVerticalSpacing,
                ],
              ),
            ),
            Spacer(),
            Center(
              child: PrimaryButton(
                text: "Continue with Email",
                textColor: kWhiteColor,
                press: _validate == true
                    ? () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => CustomerAuthTwo(email: _emailController.text,)));
                      }
                    : null,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
