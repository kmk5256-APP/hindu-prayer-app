class Mantra {
  final String id;
  final String title;
  final String sanskrit;
  final String transliteration;
  final String meaning;
  final String category; // e.g. "Daily", "Shiva", "Vishnu", "Ganesha"
  final String deity;
  final int recommendedCount; // usually 108 or 11

  const Mantra({
    required this.id,
    required this.title,
    required this.sanskrit,
    required this.transliteration,
    required this.meaning,
    required this.category,
    required this.deity,
    this.recommendedCount = 108,
  });
}
