import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'mantra_list_screen.dart';
import 'japa_mala_screen.dart';
import 'deity_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                '🕏 Hindu Prayer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black45)],
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isDark
                        ? [AppTheme.deepMaroon, AppTheme.darkBg]
                        : [AppTheme.deepSaffron, AppTheme.saffron],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        'ॐ',
                        style: TextStyle(
                          fontSize: 72,
                          color: isDark ? AppTheme.gold : Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Om Shanti',
                        style: TextStyle(
                          fontSize: 16,
                          color: isDark ? AppTheme.gold.withOpacity(0.8) : Colors.white70,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          theSliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.1,
              ),
              delegate: SliverChildListDelegate([
                _HomeCard(
                  title: 'Sacred Mantras',
                  subtitle: 'Chant & Learn',
                  icon: Icons.self_improvement,
                  color: AppTheme.saffron,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MantraListScreen()),
                  ),
                ),
                _HomeCard(
                  title: 'Japa Mala',
                  subtitle: '108 Bead Counter',
                  icon: Icons.radio_button_checked,
                  color: const Color(0xFF6A1B9A),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const JapaMalaScreen()),
                  ),
                ),
                _HomeCard(
                  title: 'Deities',
                  subtitle: 'Divine Forms',
                  icon: Icons.temple_hindu,
                  color: AppTheme.maroon,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DeityListScreen()),
                  ),
                ),
                _HomeCard(
                  title: 'Daily Practice',
                  subtitle: 'Coming Soon',
                  icon: Icons.wb_sunny,
                  color: const Color(0xFF2E7D32),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Daily practice features coming in next update 🙏')),
                    );
                  },
                ),
              ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'ॐ शान्तिः शान्तिः शान्तिः',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Om Peace Peace Peace',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}

// Helper to avoid typo issues
Widget theSliverPadding({required EdgeInsets padding, required Widget sliver}) {
  return SliverPadding(padding: padding, sliver: sliver);
}

class _HomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _HomeCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.85),
                color,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, size: 36, color: Colors.white),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.85),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
