import 'package:flutter/material.dart';

class RouteUtils {
  static void push({
    required BuildContext context,
    required Widget screen,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  static void pushReplacement({
    required BuildContext context,
    required Widget screen,
  }) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  static void pushAndRemoveAll({
    required BuildContext context,
    required Widget screen,
  }) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
      (route) => false,
    );
  }

  static void pop({required BuildContext context}) {
    Navigator.of(context).pop();
  }
}
