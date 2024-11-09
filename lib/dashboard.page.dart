import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/controller/dashboard_controller.dart';
import 'package:tugas_state_management_getx_movies/page/menu/favorite_menu.dart';
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
      const FavoriteMenu(),
      const ProfileMenu(),
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: const Color(0xFF1A1A2E),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: menus[dashboardController.selectedIndex.value],
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF0F0F1C),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              currentIndex: dashboardController.selectedIndex.value,
              onTap: (index) {
                dashboardController.selectedIndex.value = index;
              },
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[500],
              backgroundColor: const Color(0xFF24243A),
              type: BottomNavigationBarType.fixed,
              items: [
                _buildAnimatedBottomNavBarItem(
                  icon: Icons.home_outlined,
                  label: 'Home',
                  isSelected: dashboardController.selectedIndex.value == 0,
                ),
                _buildAnimatedBottomNavBarItem(
                  icon: Icons.upcoming_outlined,
                  label: 'Upcoming',
                  isSelected: dashboardController.selectedIndex.value == 1,
                ),
                _buildAnimatedBottomNavBarItem(
                  icon: Icons.history_rounded,
                  label: 'History',
                  isSelected: dashboardController.selectedIndex.value == 2,
                ),
                _buildAnimatedBottomNavBarItem(
                  icon: Icons.bookmark_outline,
                  label: 'Favorite',
                  isSelected: dashboardController.selectedIndex.value == 3,
                ),
                _buildAnimatedBottomNavBarItem(
                  icon: Icons.person_outline,
                  label: 'Profile',
                  isSelected: dashboardController.selectedIndex.value == 4,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  BottomNavigationBarItem _buildAnimatedBottomNavBarItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(isSelected ? 10 : 0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF0F0F1C) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSelected
              ? [
                  const BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ]
              : [],
        ),
        child: Icon(
          icon,
          size: isSelected ? 35 : 24,
          color: isSelected ? Colors.white : Colors.grey[500],
        ),
      ),
      label: label,
    );
  }
}
