// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  const TransactionAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AlertDialog(
        title: Text("Authenticate"),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Password",
          ),
          obscureText: true,
          maxLength: 4,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Confirm"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
