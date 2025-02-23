import 'dart:math';
import 'package:get/get.dart';
import '../data/quotes_data.dart';
import '../models/quote.dart';

class QuoteController extends GetxController {  // Reactive controller in GetX for state management.
  var selectedCategory = "Inspirational".obs;  // Stores the currently selected quote category
  var currentQuote = Quote(
    text: "",
    author: "",
    image: "",  
    authorImage: "", 
    authorDetails: "", 
  ).obs;  // Stores the current displayed quote using reactive state

  void setCategory(String category) {  // Updates the selected category
    selectedCategory.value = category;
    fetchRandomQuote();  // Get a new random quote from the category
  }

  void fetchRandomQuote() { 
    var categoryQuotes = quotes[selectedCategory.value] ?? []; 
    if (categoryQuotes.isNotEmpty) {  // Check if the category has quotes
      currentQuote.value = categoryQuotes[Random().nextInt (categoryQuotes.length)];  //   Picks a random quote using Random().nextInt() and Updates currentQuote with the selected quote
    }
  }

  @override
  void onInit() { 
    fetchRandomQuote();   // Calls fetchRandomQuote() when the controller is initialized
    super.onInit();  // Calls the parent class's onInit() method
  } 
}  
