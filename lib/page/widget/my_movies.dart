import 'package:flutter/material.dart';

class MyMovies extends StatelessWidget {
  final List<String> imagePaths;
  final double posterWidth;
  final double posterHeight;

  const MyMovies({
    Key? key,
    required this.imagePaths,
    required this.posterWidth,
    required this.posterHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: posterHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              imagePaths[index],
              width: posterWidth,
              height: posterHeight,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}