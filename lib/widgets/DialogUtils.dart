import 'package:flutter/material.dart';

void showWarningTabAddDialog(BuildContext context,String title,String message) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
              child: Text("Cancel!"),
              onPressed: () {
                Navigator.pop(context);
              }),
          FlatButton(child: Text("Ok"), onPressed: () => Navigator.pop(context))
        ],
      ));

}