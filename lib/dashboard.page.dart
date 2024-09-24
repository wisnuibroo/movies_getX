import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/dashboard_controller.dart';
import 'package:tugas_state_management_getx_movies/page/menu/upcoming_menu.dart';
import 'package:tugas_state_management_getx_movies/page/menu/history_menu.dart';
import 'package:tugas_state_management_getx_movies/page/menu/home_menu.dart';
import 'package:tugas_state_management_getx_movies/page/menu/profile_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController());
    final List<Widget> menus = [
      const HomeMenu(),
      const UpcomingMenu(),
      const HistoryMenu(),
      const ProfileMenu(),
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: dashboardController.selectedIndex.value,
          onTap: (index) {
            dashboardController.selectedIndex.value = index;
          },
          backgroundColor: Colors.blue,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.upcoming),
              label: 'Upcoming',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_rounded),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
