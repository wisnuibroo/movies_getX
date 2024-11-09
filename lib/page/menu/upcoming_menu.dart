import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_movies_card.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class UpcomingMenu extends StatelessWidget {
  const UpcomingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 8, right: 8),
        child: Column(
          children: [
            const MyText(
                hintText: "Upcoming Movies",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                colors: Colors.white),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/transformers poster 2.jpg",
                      name: "TRANSFORMERS ONE",
                      director: "Josh Cooley",
                      duration: "104 minutes",
                      genre: "Animation, Action, Adventure",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/venom poster.jpg",
                      name: "VENOM: THE LAST DANCE",
                      director: "Kelly Marcel",
                      duration: "97 minutes",
                      genre: "Action, Adventure, Sci-Fi",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/mufasa poster.jpg",
                      name: "MUFASA: THE LION KING",
                      director: "Barry Jenkins",
                      duration: "103 minutes",
                      genre: "Animation, Adventure, Drama, Family, Musical",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/captain amerika poster.jpg",
                      name: "CAPTAIN AMERICA: BRAVE NEW WORLD",
                      director: "Julius Onah",
                      duration: "2 hours",
                      genre: "Action, Adventure, Superhero",
                    ),
                  ),
                  SizedBox(height: 45)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
