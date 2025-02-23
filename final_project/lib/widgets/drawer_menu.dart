import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF3B7B96)),  // Background color for the header
              child: Column(  // Wrap the Icon and Text inside a Column
                mainAxisAlignment: MainAxisAlignment.center,  // Align vertically
                crossAxisAlignment: CrossAxisAlignment.center,  // Center horizontally
                children: [
                  Icon(Icons.account_circle, size: 50, color: Color(0xFFFFFFFF)),  // Profile icon with purple color
                  SizedBox(height: 10),  // Spacer
                  Text("Welcome, User!", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18)),  // Text with purple color
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF1D445E)),  // Purple icon for better consistency
              title: const Text("Settings", style: TextStyle(color: Color(0xFF1D445E))),  // Purple text
              onTap: () => Get.toNamed('/settings'),
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Color(0xFF1D445E)),  // Purple icon for "About"
              title: const Text("About", style: TextStyle(color: Color(0xFF1D445E))),  // Purple text
              onTap: () => Get.toNamed('/about'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Color(0xFF1D445E)),  // Purple icon for "Logout"
              title: const Text("Logout", style: TextStyle(color: Color(0xFF1D445E))),  // Purple text
              onTap: () => Get.toNamed('/logout'),
            ),
          ],
        ),
      );
    }
  }
