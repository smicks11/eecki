// ignore_for_file: prefer_const_constructors
import 'package:eecki/utils/app_colors.dart';
import 'package:eecki/utils/app_textstyle.dart';
import 'package:eecki/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ServiceProviderSlider extends StatefulWidget {
  final String bannerImage;
  final String image;
  final String name;
  final String desc;
  final int index;
  final double rating;
  final int ratingLevel;
  final int price;
  const ServiceProviderSlider({
    Key key,
    this.image,
    this.name,
    this.desc,
    this.index, this.rating, this.ratingLevel, this.price, this.bannerImage,
  }) : super(key: key);

  @override
  State<ServiceProviderSlider> createState() => _ServiceProviderSliderState();
}

class _ServiceProviderSliderState extends State<ServiceProviderSlider> {
  bool switchColor = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 0),
      child: Container(
        height: 280,
        width: 250,
        decoration: BoxDecoration(
          color: kWhiteColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  "assets/images/${widget.bannerImage}",
                  height: 150,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/${widget.image}"),
                        radius: 15,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              widget.name,
                              style: bodyNormalText(context).copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                              maxLines: 1,
                            ),
                            Text(
                              "Level 1 seller",
                              style: bodyTinyText(context).copyWith(
                                  color: kWhiteColor.withOpacity(0.5),
                                  fontSize: 10),
                            ),
                          ],
                        )),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          switchColor = !switchColor;
                        });
                      },
                      icon: Icon(
                        switchColor == true
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: switchColor == true
                            ? Colors.orange[600]
                            : kWhiteColor.withOpacity(0.7),
                      ),
                      iconSize: 18,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  widget.desc,
                  style: bodySmallText(context),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange[600], size: 14),
                          Text(
                            widget.rating.toString(),
                            style: bodyTinyText(context)
                                .copyWith(color: Colors.orange[600]),
                          ),
                          kTinyHorizontalSpacing,
                          Text(
                            widget.ratingLevel.toString(),
                            style: bodyTinyText(context).copyWith(
                                color: kWhiteColor.withOpacity(0.4),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text(
                            "From",
                            style: bodyTinyText(context).copyWith(
                                color: kWhiteColor.withOpacity(0.4),
                                fontWeight: FontWeight.bold),
                          ),
                          kTinyHorizontalSpacing,
                          Text(
                            "N${widget.price}K",
                            style: bodyNormalText(context)
                                .copyWith(color: kWhiteColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
