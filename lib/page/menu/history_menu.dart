import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_button.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_movies_card.dart';

class HistoryMenu extends StatelessWidget {
  const HistoryMenu({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282828),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "History Watch",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/eric cantona poster.jpg",
                      name: "LOOKING FOR ERIC",
                      director: "Kean Loach",
                      duration: "86 minutes",
                      genre: "Comedy, Drama, Fantasy, Sport",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/demon slayer poster.jpg",
                      name: "DEMON SLAYER",
                      director: "Haruo Sotozaki",
                      duration: "57 minutes",
                      genre: "Anime, Action, Adventure, Fantasy",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/godzila x kong poster.jpg",
                      name: "GODZILLA X KONG",
                      director: "Takashi Yamazaki",
                      duration: "1,54 hours",
                      genre: "Action, Adventure, Fantasy",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/kungfu panda poster.jpg",
                      name: "KUNG FU PANDA",
                      director: "Mark Osborne, John Stevenson",
                      duration: "2 hours",
                      genre: "Action, Adventure, Comedy",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/toy story poster.jpg",
                      name: "TOY STORY",
                      director: "John Lasseter",
                      duration: "54 minutes",
                      genre: "Comedy, Animation, Fantasy",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/jurassic park poster.jpg",
                      name: "JURASSIC PARK",
                      director: "Steven Spielberg",
                      duration: "2,7 hours",
                      genre: "Adventure, Action, Sci-Fi, Thriller",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyMovieCard(
                      imagePath: "assets/ali poster.jpg",
                      name: "WILL SMITH ALI",
                      director: "Michael Mann",
                      duration: "2,37 hours",
                      genre: "Biography, Drama, Sport",
                      button: [
                        MyButton(
                          textButton: "Play",
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MyButton(
                          textButton: "Details",
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          radius: 12,
                          onPressed: () {},
                        ),
                      ],
                    ),
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
