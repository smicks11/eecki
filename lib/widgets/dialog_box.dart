import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogBox extends StatelessWidget {
  const ShowDialogBox({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
                title: Text("Notice!"),
                content: Text(
                    "Content would go live only if payment is confirmed\n Kindly ensure all your content is wrapped in a PDF before uploading"),
                actions: <Widget>[
                  CupertinoDialogAction(
                      textStyle: TextStyle(color: Colors.red),
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                ],
              ));
    }
    return Container(
      
    );
  }
}