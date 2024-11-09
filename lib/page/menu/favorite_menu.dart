import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/task_controller.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class FavoriteMenu extends StatelessWidget {
  const FavoriteMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());
    taskController.loadTasks();
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Column(
          children: [
            const MyText(
                hintText: "Favorite Movies",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                colors: Colors.white),
            const SizedBox(height: 10),
            Expanded(
              child: Obx(() {
                if (taskController.tasks.isEmpty) {
                  return const Center(
                    child: Text(
                      'Anda belum menambahkan movies favorite.',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index) {
                    final favoriteMovie = taskController.tasks[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      color: const Color(0xFF383838),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            favoriteMovie.imagePath,
                            width: 50,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          favoriteMovie.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Hapus Favorit?",
                              middleText:
                                  "Apakah Anda yakin ingin menghapus ${favoriteMovie.title} dari daftar favorit?",
                              confirmTextColor: Colors.white,
                              cancelTextColor: Colors.white,
                              buttonColor: Colors.red,
                              cancel: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                child: MyText(
                                    hintText: "No",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    colors: Colors.white),
                              ),
                              confirm: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                onPressed: () {
                                  taskController
                                      .deleteTaskByTitle(favoriteMovie.title);
                                  Get.back();
                                  Get.snackbar(
                                    "Dihapus dari Favorit",
                                    "${favoriteMovie.title} telah dihapus dari favorit Anda!",
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                  );
                                },
                                child: MyText(
                                    hintText: "Yes",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    colors: Colors.white),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
