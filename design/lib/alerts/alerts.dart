import 'package:core/core.dart';
import 'package:flutter/material.dart';

class Alerts {
  static void success(String title, String message) {
    if (AppRouter().navKey.currentContext == null) return;
    showDialog(
      context: AppRouter().navKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static void error(String title, String message) {
    if (AppRouter().navKey.currentContext == null) return;

    showDialog(
      context: AppRouter().navKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static void confirm(String title, String message, Function onConfirm) {
    if (AppRouter().navKey.currentContext == null) return;

    showDialog(
      context: AppRouter().navKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
