import 'package:flutter/material.dart';

void displaySnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1000),
    content: Text(message),
  ));
}

void displaySnackWithAction(BuildContext context, String message,
    String actionText, Function onAction) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: actionText,
      onPressed: () {
        onAction();
      },
    ),
  ));
}
