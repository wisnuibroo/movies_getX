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
      ModelMovies(imagePath: 'assets/star wars poster.jpg', title: 'Star Wars'),
      ModelMovies(
          imagePath: 'assets/transformers poster.jpg', title: 'Transformers'),
      ModelMovies(
          imagePath: 'assets/godzila x kong poster.jpg',
          title: 'Godzilla x Kong'),
      ModelMovies(
          imagePath: 'assets/jurassic park poster.jpg', title: 'Jurassic Park'),
      ModelMovies(imagePath: 'assets/marvel poster.jpg', title: 'Marvel'),
      ModelMovies(imagePath: 'assets/superman poster.jpg', title: 'Superman'),
      ModelMovies(imagePath: 'assets/joker poster.jpg', title: 'Joker'),
    ];

    final animationMovies = [
      ModelMovies(
          imagePath: 'assets/demon slayer poster.jpg', title: 'Demon Slayer'),
      ModelMovies(
          imagePath: 'assets/naruto poster.jpg', title: 'Naruto: The Last'),
      ModelMovies(imagePath: 'assets/one piece poster.jpg', title: 'One Piece'),
      ModelMovies(imagePath: 'assets/toy story poster.jpg', title: 'Toy Story'),
      ModelMovies(
          imagePath: "assets/kungfu panda poster.jpg", title: "Kung Fu Panda"),
      ModelMovies(imagePath: 'assets/lego poster.jpg', title: 'Lego Movie'),
      ModelMovies(
          imagePath: 'assets/doraemon poster.jpg', title: 'Doraemon & Nobita'),
      ModelMovies(imagePath: 'assets/baby boss poster.jpg', title: 'Baby Boss'),
    ];

    final sportMovies = [
      ModelMovies(
          imagePath: 'assets/the express poster.jpg', title: 'The Express'),
      ModelMovies(
          imagePath: 'assets/more than poster.jpg', title: 'More Than A Game'),
      ModelMovies(imagePath: 'assets/ali poster.jpg', title: 'Will Smith Ali'),
      ModelMovies(imagePath: 'assets/safety poster.jpg', title: 'Safety'),
      ModelMovies(imagePath: 'assets/miracle poster.jpg', title: 'Miracle'),
      ModelMovies(
          imagePath: 'assets/mike tyson poster.jpg', title: 'Mike Tyson'),
      ModelMovies(
          imagePath: 'assets/eric cantona poster.jpg',
          title: 'Looking For Eric'),
      ModelMovies(imagePath: 'assets/the god of.jpg', title: 'The God Of'),
    ];

    final horrorMovies = [
      ModelMovies(imagePath: 'assets/amelia poster.jpg', title: 'Amelia'),
      ModelMovies(imagePath: 'assets/consumed poster.jpg', title: 'Consumed'),
      ModelMovies(
          imagePath: 'assets/in its wake poster.jpg', title: 'In Its Wake'),
      ModelMovies(
          imagePath: 'assets/mouse trap poster.jpg', title: 'Mouse Trap'),
      ModelMovies(imagePath: 'assets/tarot poster.jpg', title: 'Tarot'),
      ModelMovies(imagePath: 'assets/the hand poster.jpg', title: 'The Hand'),
      ModelMovies(imagePath: 'assets/the y poster.jpg', title: 'The Y'),
      ModelMovies(
          imagePath: 'assets/the exorcist poster.jpg', title: 'The Exorcist'),
      ModelMovies(imagePath: 'assets/the nun poster.jpg', title: 'The Nun'),
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1A1A1A),
              Color(0xFF282828),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: MySearchBar(
                searchBarHeight: 45,
                shadowColor: Colors.transparent,
                iconSearchBar: Icons.search,
                searchBarBackground: const Color(0xFF454444),
                searchBarHint: 'Search...',
                searchBarhorizontalPadding: 10,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Obx(() {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Icon(
                              Icons.circle,
                              color: movieController.currentPage.value == index
                                  ? Colors.white
                                  : Colors.grey,
                              size: 7,
                            ),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 20),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
