# 📱 Random Quote Generator App
# CCS3351 – Mobile Application Development -Final Project

A Flutter mobile application that displays **random famous quotes** categorized into themes like Motivation, Life, Finance, and Love.  
Built as part of the **CCS3351 – Mobile Application Development** final project, this app demonstrates **Flutter UI design, state management, and navigation** using **GetX**.

---

## 🚀 Features

- 🎯 Displays random quotes from locally stored data.
- 📂 Supports multiple categories (Motivational, Finance, Life, Love).
- 🔄 Button to fetch new random quotes dynamically.
- 📖 Detailed screen with author information and image.
- 🧭 Smooth navigation using **GetX** routing (`Get.to`, `Get.toNamed`).
- 💡 Well-structured Flutter project with reusable components.

---

## 🧠 Lessons Learned

This project provided hands-on experience in:
- Flutter’s widget tree and app structure.
- **State management using GetX** for real-time UI updates.
- UI enhancement using gradients, shadows, blur effects, and rounded corners.
- Building reusable components like `BottomNavBar` and `DrawerMenu`.
- Navigation and data passing between screens using GetX.
- Structuring code with proper separation of concerns (models, controllers, screens, and widgets).
- Generating **DartDoc documentation** and using GitHub for version control.

---

## 🏗️ Tech Stack

| Layer | Technology |
|-------|-------------|
| Frontend | Flutter, Dart |
| State Management | GetX |
| IDE | Android Studio / VS Code |
| Documentation | DartDoc |
| Version Control | GitHub |

---

## 📂 Folder Structure

lib/
 ├── main.dart
 ├── models/
 │    └── quote_model.dart
 ├── controllers/
 │    └── quote_controller.dart
 ├── data/
 │    └── quotes_data.dart
 ├── screens/
 │    ├── home_screen.dart
 │    └── detail_screen.dart
 ├── widgets/
 │    ├── quote_card.dart
 │    ├── bottom_navbar.dart
 │    └── drawer_menu.dart

---

## 🧭 How to Run

1. Clone this repository:
      git clone https://github.com/yourusername/random-quote-generator.git

2. Navigate to the project directory:
      cd random-quote-generator

3. Run the app:
      flutter run

---

📘 Repository Information

* Module: CCS3351 – Mobile Application Development
* Project: Random Famous Quote Generator
* Developer: Samith Shashika
* Institution: Sri Lanka Technological Campus (SLTC)

---

🏁 License

This project is licensed under the MIT License – feel free to use and modify it.

---

❤️ Acknowledgements

* SLTC – CCS3351 Mobile Application Development module
* Lecturers and mentors for project guidance
* Flutter & GetX open-source communities
