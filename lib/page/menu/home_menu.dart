import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/component_page/movies_adapter.dart';
import 'package:tugas_state_management_getx_movies/controller/movie_controller.dart';
import 'package:tugas_state_management_getx_movies/model/model_movies.dart';

import 'package:tugas_state_management_getx_movies/page/widget/my_search.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieController movieController = Get.put(MovieController());

    final trendingMovies = [
      ModelMovies('assets/star wars poster.jpg'),
      ModelMovies('assets/transformers poster.jpg'),
      ModelMovies('assets/godzila x kong poster.jpg'),
      ModelMovies('assets/jurassic park poster.jpg'),
      ModelMovies('assets/marvel poster.jpg'),
      ModelMovies('assets/superman poster.jpg'),
      ModelMovies('assets/joker poster.jpg'),
    ];

    final animationMovies = [
      ModelMovies('assets/demon slayer poster.jpg'),
      ModelMovies('assets/naruto poster.jpg'),
      ModelMovies('assets/one piece poster.jpg'),
      ModelMovies('assets/toy story poster.jpg'),
      ModelMovies('assets/kungfu panda poster.jpg'),
      ModelMovies('assets/lego poster.jpg'),
      ModelMovies('assets/doraemon poster.jpg'),
      ModelMovies('assets/baby boss poster.jpg'),
    ];

    final sportMovies = [
      ModelMovies('assets/the express poster.jpg'),
      ModelMovies('assets/more than poster.jpg'),
      ModelMovies('assets/ali poster.jpg'),
      ModelMovies('assets/safety poster.jpg'),
      ModelMovies('assets/miracle poster.jpg'),
      ModelMovies('assets/mike tyson poster.jpg'),
      ModelMovies('assets/eric cantona poster.jpg'),
      ModelMovies('assets/the god of.jpg'),
    ];

    final horrorMovies = [
      ModelMovies('assets/amelia poster.jpg'),
      ModelMovies('assets/consumed poster.jpg'),
      ModelMovies('assets/in its wake poster.jpg'),
      ModelMovies('assets/mouse trap poster.jpg'),
      ModelMovies('assets/tarot poster.jpg'),
      ModelMovies('assets/the hand poster.jpg'),
      ModelMovies('assets/the y poster.jpg'),
      ModelMovies('assets/the exorcist poster.jpg'),
      ModelMovies('assets/the nun poster.jpg'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF282828),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: MySearchBar(
              searchBarHeight: 35,
              shadowColor: Colors.transparent,
              iconSearchBar: Icons.search,
              searchBarBackground: const Color.fromARGB(116, 255, 255, 255),
              searchBarHint: 'Search...',
              searchBarhorizontalPadding: 10,
            ),
          ),
          Positioned(
            top: 53,
            right: 15,
            child: const Icon(
              Icons.notifications,
              color: Color.fromARGB(116, 255, 255, 255),
              size: 30,
            ),
          ),
          Positioned(
            top: 110,
            left: 20,
            right: 20,
            height: 220,
            child: PageView(
              controller: movieController.pageController,
              onPageChanged: (index) {
                movieController.currentPage.value = index;
              },
              children: [
                Image.asset(
                  "assets/godzilla cover.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/star wars cover.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/eric cantona cover.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/mike tyson cover.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Obx(() {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Icon(
                      Icons.circle,
                      color: movieController.currentPage.value == index
                          ? Colors.white
                          : Colors.grey,
                      size: 8,
                    ),
                  );
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 18, right: 18),
            child: ListView(
              children: [
                MyText(
                  hintText: "Trending Now",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                ),
                const SizedBox(height: 10),
                MovieAdapter(
                  movies: trendingMovies,
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
                MovieAdapter(
                  movies: animationMovies,
                  posterWidth: 127,
                  posterHeight: 190,
                ),
                const SizedBox(height: 20),
                MyText(
                  hintText: "Sport",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                ),
                const SizedBox(height: 10),
                MovieAdapter(
                  movies: sportMovies,
                  posterWidth: 127,
                  posterHeight: 190,
                ),
                const SizedBox(height: 20),
                MyText(
                  hintText: "Horror",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                ),
                const SizedBox(height: 10),
                MovieAdapter(
                  movies: horrorMovies,
                  posterWidth: 127,
                  posterHeight: 190,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
