import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_button.dart';

class MyMovieCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String? director;
  final String? duration;
  final String? genre;
  final List<Widget>? button;

  const MyMovieCard({
    Key? key,
    required this.imagePath,
    required this.name,
    this.director,
    this.duration,
    this.genre,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF383838),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (director != null)
                    Text(
                      "Director: $director",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  const SizedBox(height: 4),
                  if (duration != null)
                    Text(
                      "Duration: $duration",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  const SizedBox(height: 4),
                  if (genre != null)
                    Text(
                      "Genre: $genre",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  const SizedBox(height: 12),
                  if (button != null)
                    Row(
                      children: button!, 
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
