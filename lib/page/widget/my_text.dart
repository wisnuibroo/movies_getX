import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String hintText;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? padding;
  final Color colors;

  const MyText({
    super.key,
    required this.hintText,
    required this.fontSize,
    required this.fontWeight,
    this.padding,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        hintText,
        style: TextStyle(
          color: colors,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
