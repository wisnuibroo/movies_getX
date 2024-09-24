import 'package:flutter/material.dart';

class MyMovies extends StatelessWidget {
  final List<String> imagePaths;
  final double posterHeight;
  final double posterWidth;

  const MyMovies({
    super.key,
    required this.imagePaths,
    this.posterHeight = 150,
    this.posterWidth = 100, 
    required String imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: posterHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
