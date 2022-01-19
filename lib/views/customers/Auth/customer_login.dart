import 'package:eecki/services/auth_service.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/shared_prefs/user_prefs.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Auth/signup_steps/customer_auth_one.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../page_view_screen.dart';

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({Key key}) : super(key: key);

  @override
  State<CustomerLogin> createState() => _CustomerLoginState();
}

bool obserText = true;

class _CustomerLoginState extends State<CustomerLogin> {
  bool _loading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
              child: Text("Hi ${UserPreferences.getFName()} 👋",
                  style: heading1(context).copyWith(
                    color: kWhiteColor,
                    fontSize: 25,
                  )),
            ),
            kMediumVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FormBuild(
                  //   controller: _emailController,
                  //   labelText: "Email Address",
                  //   icon: Icons.clear,
                  //   onChanged: (value) {
                  //     setState(() {});
                  //   },
                  // ),
                  kLargeVerticalSpacing,
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
                ],
              ),
            ),
            Spacer(),
            Center(
              child: PrimaryButton(
                text: _loading == true ? "Loading..." : "Sign In",
                textColor: kWhiteColor,
                press: () async{
                  setState(() {
                    _loading = true;
                  });
                  await Future.value(
                    AuthService.signInWithEmailAndPwd(
                      context: context,
                      userSignInEmail: UserPreferences.getEmail(),
                      userSignInPassword: _passwordController.text,
                    )
                  );
                  setState(() {
                    _loading = false;
                  });
                },
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: bodySmallText(context).copyWith(
                      color: kWhiteColor,
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => CustomerAuthOne()));
                    },
                    child: Text(
                      "Sign Up",
                      style:
                          bodySmallText(context).copyWith(color: kPrimaryColor),
                    ))
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
