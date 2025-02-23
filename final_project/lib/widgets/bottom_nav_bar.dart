import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF3B7B96),
      unselectedItemColor: Colors.grey,
      currentIndex: 0, // Set default index
      onTap: (index) {
        if (index == 0) {
          Get.toNamed('/'); // Navigate to Home
        } else {
          Get.toNamed('/favorites'); // Navigate to Favorites
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
      ],
    );
  }
}
