// ignore_for_file: prefer_const_constructors
import 'package:eecki/services/auth_service.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/shared_prefs/user_prefs.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomerAuthThree extends StatefulWidget {
  final String email;
  final String fName;
  final String lName;
  const CustomerAuthThree({Key key, this.email, this.fName, this.lName})
      : super(key: key);

  @override
  State<CustomerAuthThree> createState() => _CustomerAuthThreeState();
}

bool obserText = true;
bool obserTextTwo = true;

class _CustomerAuthThreeState extends State<CustomerAuthThree> {
  bool _validatePwd = false;
  bool _validateConfirmPwd = false;
  bool _loading = false;

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    String pText = "Password should be a minimum of 8 chars";
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
                child: Text("Set a\npassword",
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
                      "YOUR PASSWORD",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    TextFormField(
                      onChanged: (value) {
                        value = _passwordController.text;
                        setState(() {
                          if (value.length < 8) {
                            _validatePwd = false;
                          } else {
                            _validatePwd = true;
                          }
                        });
                      },
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: obserText,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        errorText: _validatePwd == true ? null : pText,
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
                                  obserText = !obserText;
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
                    TextFormField(
                      onChanged: (value) {
                        value = _confirmPasswordController.text;
                        setState(() {
                          if (value.length < 8 ||
                              value != _passwordController.text) {
                            _validateConfirmPwd = false;
                          } else {
                            _validateConfirmPwd = true;
                          }
                        });
                      },
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: obserTextTwo,
                      controller: _confirmPasswordController,
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
                                  obserTextTwo = !obserTextTwo;
                                });
                                FocusScope.of(context).unfocus();
                              },
                              child: Icon(
                                obserTextTwo == true
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
                        hintText: "Confirm Password",
                      ),
                    ),
                    kLargeVerticalSpacing,
                  ],
                ),
              ),
              kLargeVerticalSpacing,
              kLargeVerticalSpacing,
              Center(
                child: PrimaryButton(
                  text: _loading == true ? "Loading..." : "Complete Sign up",
                  textColor: kWhiteColor,
                  press: _validateConfirmPwd == true && _validatePwd == true
                      ? () async {
                          setState(() {
                            _loading = true;
                          });
                          await Future.value(AuthService.createWithEmailAndPwd(
                            email: widget.email,
                            password: _passwordController.text,
                            context: context,
                            fName: widget.fName,
                            lName: widget.lName,
                          ));
                          await UserPreferences.setProfileData(
                            fName: widget.fName,
                            lName: widget.lName,
                            email: widget.email,
                          );
                          setState(() {
                            _loading = false;
                          });
                        }
                      : null,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
