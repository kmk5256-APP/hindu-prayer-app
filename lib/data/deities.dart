import 'package:flutter/material.dart';
import '../models/deity.dart';

// Note: Using Flutter Color here for simplicity
final List<Deity> allDeities = [
  Deity(
    id: 'ganesha',
    name: 'Lord Ganesha',
    sanskritName: 'गणेश',
    description: 'The remover of obstacles, lord of beginnings, wisdom and intellect. Worshipped first in all auspicious ceremonies.',
    icon: '🐘',
    color: const Color(0xFFFF9933),
    mantraIds: ['ganesha'],
    aarti: '''जय गणेश जय गणेश जय गणेश देवा
माता जकी पर नूर कैसे कवि सुख जीवन पावे
अनुवीन तेरे दों नेत्र सरते सदा पावे
जय गणेश...
''',
  ),
  Deity(
    id: 'shiva',
    name: 'Lord Shiva',
    sanskritName: 'शिव',
    description: 'The Auspicious One, the Destroyer and Transformer. Lord of Yoga, meditation and the cosmic dance (Tandava).',
    icon: '🔮',
    color: const Color(0xFF4A148C),
    mantraIds: ['om-namah-shivaya', 'mahamrityunjaya'],
    aarti: '''जय शिव ओंकारा हर हर भोलेनाथ
जय गिरिजा परवती मंगल मर्दन में बोलेनाथ
''',
  ),
  Deity(
    id: 'vishnu',
    name: 'Lord Vishnu',
    sanskritName: 'विष्णु',
    description: 'The Preserver of the Universe. The supreme being who maintains cosmic order (Dharma).',
    icon: '🐙',
    color: const Color(0xFF1565C0),
    mantraIds: ['vishnu'],
    aarti: '''ओम जय जगदीश हरे
स्वामी जय जगदीश हरे
''',
  ),
  Deity(
    id: 'krishna',
    name: 'Lord Krishna',
    sanskritName: 'कृष्ण',
    description: 'The Supreme Personality of Godhead, the teacher of the Bhagavad Gita, the embodiment of divine love and joy.',
    icon: '🌿',
    color: const Color(0xFF2E7D32),
    mantraIds: ['hare-krishna', 'vishnu'],
    aarti: '''आरती कुंजबिहारी की
श्री गिरधर की
''',
  ),
  Deity(
    id: 'durga',
    name: 'Goddess Durga',
    sanskritName: 'दुर्गा',
    description: 'The invincible Mother Goddess, protector of dharma, destroyer of evil, and source of all strength (Shakti).',
    icon: '👑',
    color: const Color(0xFFC62828),
    mantraIds: ['durga'],
    aarti: '''जय अम्बे गौरी मां
जय कृष्ण कल्याणी मां
''',
  ),
  Deity(
    id: 'hanuman',
    name: 'Lord Hanuman',
    sanskritName: 'हनुमान',
    description: 'The greatest devotee of Lord Rama, symbol of strength, courage, loyalty and selfless service.',
    icon: '🦍',
    color: const Color(0xFFE65100),
    mantraIds: ['hanuman'],
    aarti: '''आरती कीजीए हनुमान लला की
कृष्णु जी शरण सुमिरो पवन की
''',
  ),
];
