import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/model/model_movies.dart';

class MovieAdapter extends StatelessWidget {
  final List<ModelMovies> movies;
  final double posterWidth;
  final double posterHeight;

  const MovieAdapter({
    Key? key,
    required this.movies,
    required this.posterWidth,
    required this.posterHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: posterHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset(
                  movie.imagePath,
                  width: 120,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
