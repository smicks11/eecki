// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/service_provider/Dashboard/index.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  final String email;
  const LoginScreen({ Key key, this.email }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool obserText = true;

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordController = TextEditingController();
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
                child: Text("Log in",
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
                    Text("to login",
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
                    Center(
                      child: PrimaryButton(
                        text: "Sign In",
                        textColor: kWhiteColor,
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (ctx) => Dashboard()));
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