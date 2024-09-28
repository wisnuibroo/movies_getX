import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final double searchBarHeight;
  final Color shadowColor;
  final IconData iconSearchBar;
  final Color searchBarBackground;
  final String searchBarHint;
  final double searchBarhorizontalPadding;


  const MySearchBar({
    Key? key,
    required this.searchBarHeight,
    required this.shadowColor,
    required this.iconSearchBar,
    required this.searchBarBackground,
    required this.searchBarHint,
    required this.searchBarhorizontalPadding,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: searchBarHeight,
      decoration: BoxDecoration(
        color: searchBarBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(

        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: searchBarhorizontalPadding),
          hintText: searchBarHint,
          prefixIcon: Icon(iconSearchBar, color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
