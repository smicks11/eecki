import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_spacing.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                  "History",
                  style: heading1(context).copyWith(fontSize: 25),
                )),
            kLargeVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday - Nov 3, 2022",
                    style: bodyTinyText(context),
                  ),
                  Text(
                    "Wonderous Creations Clothiers",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Fashion",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "Wire, no frames",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Electrical",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Divider(color: faintDark,),
            ),
            kSmallVerticalSpacing,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday - Oct 3, 2022",
                    style: bodyTinyText(context),
                  ),
                  Text(
                    "Kossy The Creator",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Product design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "MP, water services",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Plumbing",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "Wale dey design",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Graphics design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Divider(color: faintDark,),
            ),
            kSmallVerticalSpacing,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday - Oct 3, 2022",
                    style: bodyTinyText(context),
                  ),
                  Text(
                    "Kossy The Creator",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Product design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "MP, water services",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Plumbing",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "Wale dey design",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Graphics design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Divider(color: faintDark,),
            ),
            kSmallVerticalSpacing,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday - Oct 3, 2022",
                    style: bodyTinyText(context),
                  ),
                  Text(
                    "Kossy The Creator",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Product design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "MP, water services",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Plumbing",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "Wale dey design",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Graphics design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Divider(color: faintDark,),
            ),
            kSmallVerticalSpacing,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday - Oct 3, 2022",
                    style: bodyTinyText(context),
                  ),
                  Text(
                    "Kossy The Creator",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Product design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "MP, water services",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Plumbing",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                  kSmallVerticalSpacing,
                  Text(
                    "Wale dey design",
                    style: bodyTinyText(context)
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    "Graphics design",
                    style: bodyTinyText(context)
                        .copyWith(fontSize: 10, color: faintDark),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
