// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';

class FormBuild extends StatelessWidget {

  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final Function onChanged;
  final String errorText;
  final FormFieldValidator validator;
  final bool autoFocus;

  const FormBuild({Key key, @required this.controller, @required this.labelText, this.icon, @required this.onChanged, this.errorText, this.validator, this.autoFocus = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      validator: validator,
      style: TextStyle(
        color: kWhiteColor,
      ),
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          suffixIcon: controller.text.length != null ? Padding(
            padding: EdgeInsets.all(kPad - 5),
            child: GestureDetector(
              onTap: () => controller.clear(),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteColor.withOpacity(0.1),
                ),
                child: Icon(icon, size: 12, color: kWhiteColor.withOpacity(0.2),)),
            ),
          ) : null,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white30,
            fontWeight: FontWeight.bold
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kWhiteColor.withOpacity(0.1)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          hintText: labelText,
        ),
        onChanged: onChanged,
      );
  }
}
