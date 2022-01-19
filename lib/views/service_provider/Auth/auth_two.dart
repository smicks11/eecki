// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'KYC/kyc_intro.dart';
import 'components/form_build.dart';

class AuthTwo extends StatefulWidget {
  final String email;
  const AuthTwo({Key key, this.email}) : super(key: key);

  static const routeName = 'authSecondStep';

  @override
  State<AuthTwo> createState() => _AuthTwoState();
}

bool obserText = true;

class _AuthTwoState extends State<AuthTwo> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _businessNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              kMediumVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Text("Sign Up",
                    style: heading1(context).copyWith(
                      color: kWhiteColor,
                      fontSize: 35,
                    )),
              ),
              kSmallVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Row(
                  children: [
                    Text("Using",
                        style: heading1(context).copyWith(
                          color: kWhiteColor.withOpacity(0.2),
                          fontSize: 12,
                        )),
                    SizedBox(width: 3),
                    Text(widget.email,
                        style: heading1(context).copyWith(
                          color: kWhiteColor.withOpacity(0.8),
                          fontSize: 12,
                        )),
                    SizedBox(width: 3),
                    Text("to sign up",
                        style: heading1(context).copyWith(
                          color: kWhiteColor.withOpacity(0.2),
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
              kLargeVerticalSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "YOUR NAME",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _nameController,
                      labelText: "Name",
                      icon: Icons.clear,
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "YOUR PASSWORD",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    TextFormField(
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: obserText,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(kPad - 5),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor.withOpacity(0.1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obserText != obserText;
                                });
                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(
                                obserText == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: kWhiteColor.withOpacity(0.2),
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white30,
                            fontWeight: FontWeight.bold),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: kWhiteColor.withOpacity(0.1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                        hintText: "Your Password",
                      ),
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "BUSINESS NAME",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _businessNameController,
                      labelText: "Business Name",
                      icon: Icons.clear,
                    ),
                    kLargeVerticalSpacing,
                    Text(
                      "PHONE NUMBER",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _phoneNumberController,
                      labelText: "Phone Number",
                      icon: Icons.clear,
                    ),
                    kLargeVerticalSpacing,
                    Center(
                      child: PrimaryButton(
                        text: "Sign Up",
                        textColor: kWhiteColor,
                        press: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (ctx) => KYCINTRO()));
                        },
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
