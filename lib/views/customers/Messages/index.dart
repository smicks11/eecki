// ignore_for_file: prefer_const_constructors
import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/customers/Messages/components/body.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }


  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/sp_4.jpg"),
          ),
          SizedBox(width: kPad * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Adenike Gloria",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(width: kPad / 2),
      ],
    );
  }
}