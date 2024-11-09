import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/task_controller.dart';
import 'package:tugas_state_management_getx_movies/model/model_favorite.dart';

class MyMovieCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String? director;
  final String? duration;
  final String? genre;
  final List<Widget>? button;

  MyMovieCard({
    Key? key,
    required this.imagePath,
    required this.name,
    this.director,
    this.duration,
    this.genre,
    this.button,
  }) : super(key: key);

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    var isFavorite =
        RxBool(taskController.tasks.any((favorite) => favorite.title == name));
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
            const SizedBox(width: 10),
            Obx(() => GestureDetector(
                  onTap: () {
                    if (isFavorite.value) {
                      taskController.deleteTaskByTitle(name);
                      Get.snackbar(
                        "Removed from Favorites",
                        "$name telah di hapus dari favorite!",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                      );
                    } else {
                      taskController.addTask(ModelFavorite(
                        title: name,
                        imagePath: imagePath,
                      ));
                      Get.snackbar(
                        "Added to Favorites",
                        "$name telah di tambahkan ke favorite!",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                      );
                    }

                    isFavorite.value = !isFavorite.value;
                  },
                  child: Icon(
                    isFavorite.value ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite.value ? Colors.red : Colors.white,
                    size: 24,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
