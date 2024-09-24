import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final double searchBarHeight;
  final Color shadowColor;
  final IconData iconSearchBar;
  final Color searchBarBackground;
  final String searchBarHint;
  final double searchBarhorizontalPadding;
  final void Function(String) onChanged;

  const MySearchBar({
    super.key,
    required this.searchBarHeight,
    required this.shadowColor,
    required this.iconSearchBar,
    required this.searchBarBackground,
    required this.searchBarHint,
    required this.searchBarhorizontalPadding,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: searchBarHeight,
        child: SearchBar(
          shadowColor: WidgetStateProperty.all(shadowColor),
          leading: Icon(iconSearchBar),
          backgroundColor: WidgetStateProperty.all(searchBarBackground),
          hintText: searchBarHint,
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: searchBarhorizontalPadding),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}