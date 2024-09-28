import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textButton;
  final Color backgroundColor;
  final Color textColor;
  final double radius;
  final VoidCallback? onPressed;

  const MyButton({
    super.key,
    required this.textButton,
    required this.backgroundColor,
    required this.textColor,
    
    required this.radius,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(textButton),
    );
  }
}
