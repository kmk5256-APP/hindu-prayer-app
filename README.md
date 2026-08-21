# 🕏 Hindu Prayer App

A beautiful, offline-first **native Flutter** app designed for Hindus to practice daily prayers, chant mantras, perform aartis, and use a digital Japa Mala.

Built with devotion ❤️

## Features

- **Home Dashboard** — Quick access to daily practices
- **Sacred Mantras** — Popular mantras with Sanskrit text, transliteration, and meaning (Gayatri, Mahamrityunjaya, Om Namah Shivaya, Hare Krishna, and more)
- **Deities Section** — Dedicated pages for major deities (Ganesha, Shiva, Vishnu, Durga, Krishna, Hanuman)
- **Japa Mala Counter** — Traditional 108-bead digital mala with haptic feedback, progress ring, and completion celebration
- **Aartis** — Selected aarti texts for each deity
- **Offline First** — All content available without internet
- **Beautiful Traditional UI** — Saffron, deep maroon & gold theme inspired by Hindu aesthetics
- **Dark Mode Support** — Respects system theme

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.16+ (stable channel)
- Dart 3.2+
- Android Studio / VS Code with Flutter & Dart plugins
- For iOS builds: Xcode (macOS only)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kmk5256-APP/hindu-prayer-app.git
cd hindu-prayer-app
```

2. Generate the platform folders (android/ios/web etc.) if they are missing:
```bash
flutter create .
```

3. Get dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

### Build for Release

**Android APK / App Bundle:**
```bash
flutter build apk --release
# or for Play Store
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── theme/
│   └── app_theme.dart         # Saffron / Maroon / Gold themes + dark mode
├── data/
│   ├── mantras.dart           # Curated mantras with Sanskrit + meaning
│   └── deities.dart           # Deity information & aartis
├── models/
│   ├── mantra.dart
│   └── deity.dart
└── screens/
    ├── home_screen.dart
    ├── mantra_list_screen.dart
    ├── mantra_detail_screen.dart
    ├── japa_mala_screen.dart   # Interactive bead counter
    ├── deity_list_screen.dart
    └── deity_detail_screen.dart
```

## Tech Stack

- **Flutter** — True native performance on Android & iOS
- **Material 3** with custom traditional color scheme
- **Google Fonts** (Poppins + Noto Sans Devanagari)
- Built-in Haptic Feedback for authentic japa feel
- Fully offline after first launch

## Roadmap (ideas for contributors)

- [ ] More complete aartis & stotras (Hanuman Chalisa, etc.)
- [ ] Audio playback for mantras
- [ ] Hindu calendar / Panchang
- [ ] Daily reminders & notifications
- [ ] Favorite mantras & personal notes
- [ ] Multi-language support (Hindi, Tamil, Telugu...)

## Contributing

This is a spiritual project. Contributions that add authentic content or improve the experience with respect and devotion are most welcome.

Please open an issue or pull request.

## License

MIT License — free to use, modify, and share with the community.

---

**ॐ शान्तिः शान्तिः शान्तिः**

Made with ❤️ by [Ai2Life Technologies](https://ai2life.org)
