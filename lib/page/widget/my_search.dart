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
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: searchBarhorizontalPadding),
            child: Icon(
              iconSearchBar,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: searchBarHint,
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.mic,
              color: Colors.white.withOpacity(0.7),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
