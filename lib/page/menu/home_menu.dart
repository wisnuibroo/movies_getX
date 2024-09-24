import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/movie_controller.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_movies.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_search.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieController movieController = Get.put(MovieController());

    return Scaffold(
      backgroundColor: const Color(0xFF282828),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/godzilla cover.png",
              width: 450,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: MySearchBar(
              searchBarHeight: 35,
              shadowColor: Colors.transparent,
              iconSearchBar: Icons.search,
              searchBarBackground: const Color.fromARGB(116, 255, 255, 255),
              searchBarHint: 'Search...',
              searchBarhorizontalPadding: 10,
              onChanged: (query) => movieController.filterMovies(query),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260.0, left: 16.0, right: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    imagePath: '',
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
                      'assets/kungfu panda poster.jpg',
                      'assets/lego poster.jpg',
                      'assets/doraemon poster.jpg',
                      'assets/baby boss poster.jpg'
                    ],
                    posterWidth: 127,
                    posterHeight: 190,
                    imagePath: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
