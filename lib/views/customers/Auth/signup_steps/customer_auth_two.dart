// ignore_for_file: prefer_const_constructors
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Auth/signup_steps/customer_auth_three.dart';
import 'package:eecki/views/service_provider/Auth/components/form_build.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomerAuthTwo extends StatefulWidget {
  final String email;
  const CustomerAuthTwo({Key key, this.email}) : super(key: key);

  @override
  State<CustomerAuthTwo> createState() => _CustomerAuthTwoState();
}

class _CustomerAuthTwoState extends State<CustomerAuthTwo> {
  bool _validateFName = false;
  bool _validateLName = false;

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String fText = "First name can't be empty";
    String lText = "Last name can't be empty";
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
                child: Text("What's your\nname 😍?",
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
                      "YOUR NAME",
                      style: bodySmallText(context)
                          .copyWith(color: Colors.white30, fontSize: 12),
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _firstNameController,
                      labelText: "First Name",
                      icon: Icons.clear,
                      errorText: _validateFName == true ? null : fText,
                      onChanged: (value) {
                        value = _firstNameController;
                        setState(() {
                          if (value == null) {
                            _validateFName = false;
                          } else {
                            _validateFName = true;
                          }
                        });
                      },
                    ),
                    kMediumVerticalSpacing,
                    FormBuild(
                      controller: _lastNameController,
                      labelText: "Last Name",
                      icon: Icons.clear,
                      errorText: _validateLName == true ? null : lText,
                      onChanged: (value) {
                        value = _lastNameController;
                        setState(() {
                          if (value == null) {
                            _validateLName = false;
                          } else {
                            _validateLName = true;
                          }
                        });
                      },
                    ),
                    kLargeVerticalSpacing,
                    kLargeVerticalSpacing,
                  ],
                ),
              ),
              Center(
                child: PrimaryButton(
                  text: "Proceed",
                  textColor: kWhiteColor,
                  press: _validateFName == true && _validateLName == true
                      ? () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => CustomerAuthThree(
                                fName: _firstNameController.text,
                                lName: _lastNameController.text,
                                email: widget.email,
                              )));
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
