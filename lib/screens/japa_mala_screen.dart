import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/mantra.dart';
import '../theme/app_theme.dart';

class JapaMalaScreen extends StatefulWidget {
  final Mantra? initialMantra;

  const JapaMalaScreen({super.key, this.initialMantra});

  @override
  State<JapaMalaScreen> createState() => _JapaMalaScreenState();
}

class _JapaMalaScreenState extends State<JapaMalaScreen>
    with SingleTickerProviderStateMixin {
  int count = 0;
  int target = 108;
  bool hapticEnabled = true;
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    if (widget.initialMantra != null) {
      target = widget.initialMantra!.recommendedCount;
    }
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.15).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  void _increment() {
    setState(() {
      count++;
      if (count > target) count = 0; // reset after completing a mala
    });

    if (hapticEnabled) {
      HapticFeedback.lightImpact();
    }

    _pulseController.forward().then((_) => _pulseController.reverse());

    if (count == target) {
      HapticFeedback.heavyImpact();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '🙏 Mala completed! ($target counts) — Om Shanti',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          backgroundColor: AppTheme.saffron,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  void _reset() {
    setState(() => count = 0);
    HapticFeedback.mediumImpact();
  }

  @override
  Widget build(BuildContext context) {
    final progress = target > 0 ? count / target : 0.0;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialMantra?.title ?? 'Japa Mala'),
        actions: [
          IconButton(
            icon: Icon(hapticEnabled ? Icons.vibration : Icons.phone_android),
            tooltip: hapticEnabled ? 'Haptic On' : 'Haptic Off',
            onPressed: () {
              setState(() => hapticEnabled = !hapticEnabled);
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset',
            onPressed: _reset,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Mantra display if provided
            if (widget.initialMantra != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      widget.initialMantra!.sanskrit,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 20,
                            height: 1.5,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

            // Main counter area
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Progress ring
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 260,
                          height: 260,
                          child: CircularProgressIndicator(
                            value: progress,
                            strokeWidth: 12,
                            backgroundColor: isDark
                                ? Colors.white12
                                : Colors.black12,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              progress >= 1.0
                                  ? Colors.green
                                  : AppTheme.saffron,
                            ),
                          ),
                        ),
                        ScaleTransition(
                          scale: _pulseAnimation,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '$count',
                                style: TextStyle(
                                  fontSize: 72,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? AppTheme.gold : AppTheme.deepSaffron,
                                ),
                              ),
                              Text(
                                'of $target',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),

                    // Big tap button
                    GestureDetector(
                      onTap: _increment,
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppTheme.saffron,
                              AppTheme.deepSaffron,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.saffron.withOpacity(0.45),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'TAP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Tap the bead or the circle',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom info
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Traditional japa is done with a 108-bead mala.\nOne full round = 108 repetitions.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
