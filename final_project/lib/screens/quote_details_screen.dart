import 'package:flutter/material.dart';
import '../models/quote.dart';

class QuoteDetailsScreen extends StatelessWidget {
  final Quote quote;

  const QuoteDetailsScreen({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Details"),
        backgroundColor: const Color(0xFF3B7B96),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Card with Overlaid Icons & Text
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(quote.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Dark Overlay for Readability (Fixed .withOpacity)
                    Container(
                      width: double.infinity,
                      height: 350,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 0, 0, 0), // 50% opacity fix
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '"${quote.text}"',
                            style: const TextStyle(
                              fontSize: 21,
                              fontFamily: 'YoungSerif',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "- ${quote.author}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Color(0xC7FFFFFF)
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    // Share & Favorite Icons Positioned on Image
                    Positioned(
                      bottom: 30,
                      left: 95,
                      child: IconButton(
                        icon: const Icon(Icons.ios_share, size: 30, color: Color(0xFFCCF3FF)),
                        onPressed: () {
                          // Implement share functionality
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 95,
                      child: IconButton(
                        icon: const Icon(Icons.favorite_border, size: 30, color: Color(0xFFCCF3FF)),
                        onPressed: () {
                          // Implement favorite functionality
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Author Info Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Author's Profile Photo with Verification Tick
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(quote.authorImage), // Ensure authorImage is defined in Quote model
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.verified,
                            size: 18,
                            color: Colors.blue, // Instagram-like verified tick
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  // About "Author Name"
                  Expanded(
                    child: Text(
                      "About ${quote.author}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Author Description Paragraph (Fixed Null Safety Warning)
              Text(
                "\t${quote.authorDetails}", // Adds a tab space before the paragraph
                style: const TextStyle(fontSize: 16, color: Color(0xB2000000)),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF3B7B96),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
