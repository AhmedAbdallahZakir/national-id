import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.red,
      duration: Duration(
        seconds: 3,
      ),
      // action: SnackBarAction(
      //     label: "ok",
      //     onPressed: () {
      //       print("ok");
      //     }),
      // clipBehavior: Clip.none,
    ),
  );
}
