import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_movies.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282828),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Image.asset(
                "assets/godzilla cover.png",
                width: 450,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Card(
              color: Color(0xFF282828).withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      hintText: "Godzilla x Kong",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      colors: Colors.white,
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      hintText: "Now streaming on your favorite platform &",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      colors: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 247.0, left: 16.0, right: 16.0),
            child: ListView(
              children: [
                MyText(
                  hintText: "Trending Now",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                ),
                const SizedBox(height: 10),
                MyMovies(
                  imagePaths: [
                    'assets/star wars poster.jpg',
                    'assets/transformers poster.jpg',
                    'assets/godzila x kong poster.jpg',
                    'assets/jurassic park poster.jpg',
                    'assets/marvel poster.jpg',
                    'assets/superman poster.jpg'
                  ],
                  posterWidth: 127,
                  posterHeight: 190,
                ),
                const SizedBox(height: 20),
                MyText(
                  hintText: "Animation Series",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                ),
                const SizedBox(height: 10),
                MyMovies(
                  imagePaths: [
                    'assets/demon slayer poster.jpg',
                    'assets/naruto poster.jpg',
                    'assets/one piece poster.jpg',
                    'assets/toy story poster.jpg',
                    'assets/doraemon poster.jpg'
                  ],
                  posterWidth: 127,
                  posterHeight: 190,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
