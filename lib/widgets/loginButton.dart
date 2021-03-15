import 'package:flutter/material.dart';
import 'package:ticket/widgets/custom_raised_button.dart';

class LoginButton extends CustomRaisedButton {
  LoginButton({
    String text,
    Color textColor,
    Color backgroundColor,
    VoidCallback onPressed,
  }) : super(
          backgroundColor: backgroundColor,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          onPressed: onPressed,
        );
}
