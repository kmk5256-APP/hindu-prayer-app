# 🕏 Hindu Prayer App

A beautiful, offline-first **native Flutter** app designed for Hindus to practice daily prayers, chant mantras, perform aartis, and use a digital Japa Mala.

Built with devotion ❤️

## Features

- **Home Dashboard** — Quick access to daily practices
- **Sacred Mantras** — Popular mantras with Sanskrit text, transliteration, and meaning
- **Deities Section** — Dedicated pages for major deities (Ganesha, Shiva, Vishnu, Durga, Krishna, Hanuman, etc.)
- **Japa Mala Counter** — Traditional 108-bead digital mala with haptic feedback and progress tracking
- **Aartis & Stotras** — Beautiful collection of aartis
- **Offline First** — All content available without internet
- **Beautiful Traditional UI** — Saffron, deep maroon & gold theme inspired by Hindu aesthetics
- **Dark Mode Support**

## Screenshots

*(Coming soon — run the app to experience the serene UI)*

## Getting Started

### Prerequisites

- Flutter SDK 3.16+ (stable)
- Dart 3.2+
- Android Studio / VS Code with Flutter plugins
- For iOS: Xcode (macOS only)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kmk5256-APP/hindu-prayer-app.git
cd hindu-prayer-app
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Build for Release

**Android:**
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart
├── theme/
│   └── app_theme.dart
├── data/
│   ├── mantras.dart
│   └── deities.dart
├── models/
│   ├── mantra.dart
│   └── deity.dart
├── screens/
│   ├── home_screen.dart
│   ├── mantra_list_screen.dart
│   ├── mantra_detail_screen.dart
│   ├── japa_mala_screen.dart
│   ├── deity_list_screen.dart
│   └── deity_detail_screen.dart
└── widgets/
    ├── mantra_card.dart
    └── deity_card.dart
```

## Tech Stack

- **Flutter** — Cross-platform native performance
- **Material 3** with custom traditional color scheme
- **Provider / setState** for simple state management
- Unicode support for Devanagari script

## Contributing

This is a spiritual project. Contributions that add more authentic mantras, aartis, or improve the experience with respect are most welcome.

Please open an issue or pull request.

## License

MIT License — free to use, modify, and share with the community.

---

**Om Shanti Shanti Shanti** 🙏

Made with ❤️ by [Ai2Life Technologies](https://ai2life.org)
