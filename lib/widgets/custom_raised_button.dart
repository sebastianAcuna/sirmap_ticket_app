import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final double height;
  final double width;
  final double borderRadius;
  CustomRaisedButton({
    this.child,
    this.textColor,
    this.fontSize: 15.0,
    this.backgroundColor,
    this.onPressed,
    this.height: 50.0,
    this.width: 200.0,
    this.borderRadius: 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor,
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}
