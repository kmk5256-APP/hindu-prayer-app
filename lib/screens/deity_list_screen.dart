import 'package:flutter/material.dart';
import '../data/deities.dart';
import 'deity_detail_screen.dart';

class DeityListScreen extends StatelessWidget {
  const DeityListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divine Deities'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: allDeities.length,
        itemBuilder: (context, index) {
          final deity = allDeities[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DeityDetailScreen(deity: deity),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: deity.color, width: 6),
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundColor: deity.color.withOpacity(0.15),
                    child: Text(
                      deity.icon,
                      style: const TextStyle(fontSize: 28),
                    ),
                  ),
                  title: Text(
                    deity.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Text(
                    deity.sanskritName,
                    style: TextStyle(
                      color: deity.color,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
