import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/model/model_movies.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/task_controller.dart';
import 'package:tugas_state_management_getx_movies/model/model_favorite.dart';

class MovieAdapter extends StatelessWidget {
  final List<ModelMovies> movies;
  final double posterWidth;
  final double posterHeight;

  MovieAdapter({
    Key? key,
    required this.movies,
    required this.posterWidth,
    required this.posterHeight,
  }) : super(key: key);

  final TaskController taskController = Get.put(TaskController());

  bool isFavorite(String title) {
    return taskController.tasks.any((favorite) => favorite.title == title);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: posterHeight + 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Stack(
              children: [
                Container(
                  width: posterWidth,
                  height: posterHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      movie.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: GestureDetector(
                    onTap: () {
                      if (isFavorite(movie.title)) {
                        taskController.deleteTaskByTitle(movie.title);
                        Get.snackbar(
                          "Removed from Favorites",
                          "${movie.title} telah di hapus dari favorite!",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                        );
                      } else {
                        taskController.addTask(ModelFavorite(
                          title: movie.title,
                          imagePath: movie.imagePath,
                        ));
                        Get.snackbar(
                          "Added to Favorites",
                          "${movie.title} telah di tambahkan ke favorite!",
                          snackPosition: SnackPosition.TOP,
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                        );
                      }

                      taskController.update();
                    },
                    child: Obx(() => Icon(
                          isFavorite(movie.title)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: isFavorite(movie.title)
                              ? Colors.red
                              : Colors.white,
                          size: 24,
                        )),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
