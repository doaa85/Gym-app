// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final double width, height;
  final Color? buttonColor;
  VoidCallback? onTap;
  CustomElevatedButton(
      {super.key, required this.buttonText,
      required this.height,
      required this.width,
      required this.buttonColor,
      required this.onTap, required Text child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        primary: buttonColor,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
