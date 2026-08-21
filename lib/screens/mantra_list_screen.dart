import 'package:flutter/material.dart';
import '../data/mantras.dart';
import '../models/mantra.dart';
import 'mantra_detail_screen.dart';

class MantraListScreen extends StatelessWidget {
  const MantraListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Group by category
    final Map<String, List<Mantra>> grouped = {};
    for (final m in allMantras) {
      grouped.putIfAbsent(m.category, () => []).add(m);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sacred Mantras'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: grouped.length,
        itemBuilder: (context, index) {
          final category = grouped.keys.elementAt(index);
          final mantras = grouped[category]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                child: Text(
                  category.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                ),
              ),
              ...mantras.map((mantra) => Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.15),
                        child: Text(
                          mantra.sanskrit.isNotEmpty ? mantra.sanskrit[0] : 'ॐ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      title: Text(
                        mantra.title,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        mantra.deity,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MantraDetailScreen(mantra: mantra),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
