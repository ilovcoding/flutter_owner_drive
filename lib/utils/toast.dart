import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  static info(String msg, {ToastGravity gravity = ToastGravity.CENTER}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: primaryColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
