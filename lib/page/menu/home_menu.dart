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
            height: 230,
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
            padding: const EdgeInsets.only(top: 380, left: 18, right: 18),
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
                    'assets/superman poster.jpg',
                    'assets/joker poster.jpg'
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
                    'assets/kungfu panda poster.jpg',
                    'assets/lego poster.jpg',
                    'assets/doraemon poster.jpg',
                    'assets/baby boss poster.jpg'
                  ],
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
                MyMovies(
                  imagePaths: [
                    'assets/the express poster.jpg',
                    'assets/more than poster.jpg',
                    'assets/ali poster.jpg',
                    'assets/safety poster.jpg',
                    'assets/miracle poster.jpg',
                    'assets/mike tyson poster.jpg',
                    'assets/eric cantona poster.jpg',
                    'assets/the god of.jpg'
                  ],
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
                MyMovies(
                  imagePaths: [
                    'assets/amelia poster.jpg',
                    'assets/consumed poster.jpg',
                    'assets/in its wake poster.jpg',
                    'assets/mouse trap poster.jpg',
                    'assets/tarot poster.jpg',
                    'assets/the hand poster.jpg',
                    'assets/the y poster.jpg',
                    'assets/the exorcist poster.jpg',
                    'assets/the nun poster.jpg'
                  ],
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
