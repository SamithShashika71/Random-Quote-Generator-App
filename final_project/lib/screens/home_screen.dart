import 'dart:ui'; // Import for ImageFilter
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/quote_controller.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/drawer_menu.dart';
import 'quote_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final QuoteController quoteController = Get.put(QuoteController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quote Generator'),
        backgroundColor: const Color(0xFF3B7B96),
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerMenu(),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Quote of the Day",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2A52A8),
              ),
            ),
            const SizedBox(height: 15),
            Obx(() {
              return GestureDetector(
                onTap: () {
                  Get.to(() => QuoteDetailsScreen(
                      quote: quoteController.currentQuote.value));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Glass blur effect
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF3B7B96),  // Base color
                            const Color(0xFF2A0D5E),  // Deep cosmic blue
                            const Color(0xFF8A2387),  // Purple nebula
                            const Color(0xFFE94057),  // Reddish galaxy glow  
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withValues(alpha: 128, red: 0, green: 0, blue: 0),
                            spreadRadius: 3,
                            blurRadius: 15,
                            offset: const Offset(6, 6),
                          ),
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withValues(alpha: 51, red: 255, green: 255, blue: 255),
                            spreadRadius: -1,
                            blurRadius: 8,
                            offset: const Offset(-6, -6),
                          ),
                        ],
                      ),
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                        minHeight: 325,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '"${quoteController.currentQuote.value.text}"',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'YoungSerif',
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "- ${quoteController.currentQuote.value.author}",
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xC7FFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFF286B9B),
                  width: 2.5,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: Obx(() {
                  return DropdownButton<String>(
                    value: quoteController.selectedCategory.value,
                    items: [
                      'Inspirational',
                      'Motivational',
                      'Finance',
                      'Love',
                      'Life'
                    ].map((category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(
                          category,
                          style: const TextStyle(
                            color: Color(0xFF004761),
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        quoteController.setCategory(value);
                      }
                    },
                  );
                }),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                quoteController.fetchRandomQuote();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2A52A8),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                "Get New Quote",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
