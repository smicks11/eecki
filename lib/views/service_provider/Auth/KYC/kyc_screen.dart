// ignore_for_file: prefer_const_constructors

import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/widgets/back_button.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({Key key}) : super(key: key);

  @override
  State<KYCScreen> createState() => _KYCScreenState();
}

class _KYCScreenState extends State<KYCScreen> {
  String _selected = '';
  List<String> _idItems = ['Voters Card', 'NIN Slip', 'Drivers License'];
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
              child: Text("Choose an ID\nfor verification",
                  style: heading1(context).copyWith(
                    color: kWhiteColor,
                    fontSize: 30,
                  )),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Text(
                "Verify your identity with a goverment-issued ID..",
                style: bodyTinyText(context).copyWith(color: Colors.white30),
              ),
            ),
            kMediumVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ID Type",
                    style: bodySmallText(context)
                        .copyWith(color: Colors.white30, fontSize: 12),
                  ),
                  kMediumVerticalSpacing,
                  GestureDetector(
                    onTap: () => showModal(context),
                    child: Container(
                        decoration: BoxDecoration(
                          color: kWhiteColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          leading: Text(
                            _selected == "" ? "Select ID" : _selected,
                            style: bodySmallText(context)
                                .copyWith(color: Colors.white38, fontSize: 16),
                          ),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white54,
                            size: 24,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: PrimaryButton(
                text: "PROCEED",
                textColor: kWhiteColor,
                press: () {
                  Navigator.of(context);
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

  void showModal(context) {
    showModalBottomSheet(
        backgroundColor: Colors.black,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(8),
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(),
            child: ListView.separated(
                itemCount: _idItems.length,
                separatorBuilder: (context, int) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPad),
                    child: Divider(
                      color: kWhiteColor.withOpacity(0.4),
                    ),
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Center(
                          child: Text(
                        _idItems[index],
                        style: bodySmallText(context).copyWith(fontSize: 18),
                      )),
                      onTap: () {
                        setState(() {
                          _selected = _idItems[index];
                        });
                        Navigator.of(context).pop();
                      });
                }),
          );
        });
  }
}
