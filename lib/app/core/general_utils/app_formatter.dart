import 'package:flutter/material.dart';

class AppFormatter {
  AppFormatter._();

  static bool isEmail(String s) => hasMatch(s,
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }
}

double octadenScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height -
    MediaQuery.of(context).viewPadding.top -
    MediaQuery.of(context).viewPadding.bottom -
    kToolbarHeight;
