import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/dashboard_controller.dart';
import 'package:tugas_state_management_getx_movies/controller/movie_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => MovieController());
  }
}
