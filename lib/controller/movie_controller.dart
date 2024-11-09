import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/model/model_movies.dart';

class MovieController extends GetxController {
  var currentPage = 0.obs;
  late PageController pageController;
  Timer? timer;

  var filteredItems = <ModelMovies>[].obs;

  @override
  void onInit() {
    super.onInit();

    pageController = PageController(initialPage: 0);

    filteredItems.value = [
      ModelMovies(imagePath: 'assets/godzilla_cover.png', title: 'Godzilla'),
      ModelMovies(imagePath: 'assets/star_wars_cover.png', title: 'Star Wars'),
      ModelMovies(imagePath: 'assets/eric_cantona_cover.png', title: 'Cantona'),
      ModelMovies(
          imagePath: 'assets/mike_tyson_cover.png', title: 'Mike Tyson'),
    ];

    _autoScroll();
  }

  void _autoScroll() {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage.value < filteredItems.length - 1) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }

      if (pageController.hasClients) {
        pageController.animateToPage(
          currentPage.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }
}
