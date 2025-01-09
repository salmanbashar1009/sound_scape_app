
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:sound_scape_app/ui/utils/app_theme.dart';

class NotchedTabBar extends StatefulWidget {
  const NotchedTabBar({super.key});

  @override
  State<NotchedTabBar> createState() => _NotchedTabBarState();
}

class _NotchedTabBarState extends State<NotchedTabBar> {
  int selectedIndex = 0;
  final List<String> items = ['Sounds', 'Saved'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Stack(
        children: [
          // Background with notch
          Positioned(
            top: 8,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 70),
              painter: NotchedBackgroundPainter(
                selectedIndex: selectedIndex,
                itemCount: items.length,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCirc,
            top: 4.5,
            left: (MediaQuery.of(context).size.width / items.length) * selectedIndex -1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / items.length,
              child: Center(
                child: Container(
                  width: 150,
                  height: 38,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    gradient: gradientBg,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Tab items
          Positioned(
            top: 16,
            right: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                items.length,
                    (index) => _buildTabItem(index),
              ),
            ),
          ),
          // Floating bubble indicator

        ],
      ),
    );
  }

  Widget _buildTabItem(int index) {
    return GestureDetector(
      onTap: () => setState(() => selectedIndex = index),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / items.length,
        child: Center(
          child: Text(
            items[index],
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.white.withOpacity(0.4),
              fontSize: 16,
              fontWeight: selectedIndex == index ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class NotchedBackgroundPainter extends CustomPainter {
  final int selectedIndex;
  final int itemCount;

  NotchedBackgroundPainter({
    required this.selectedIndex,
    required this.itemCount,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        const Offset(0, 0),
        Offset(size.width, 0),
        [
          const Color(0xFF09001F),
          const Color(0xFF09001F),

        ],
      );

    final itemWidth = size.width / itemCount;
    final notchWidth = 170.0;
    final notchHeight = 47.0;
    final cornerRadius = 5; // Increased corner radius

    final path = Path();
    path.moveTo(0, 0);

    for (int i = 0; i < itemCount; i++) {
      if (i == selectedIndex) {
        // Draw path up to notch
        path.lineTo(itemWidth * i+ (itemWidth / 2) - (notchWidth / 2), 0);

        // Left curve
        path.quadraticBezierTo(
            itemWidth * i + (itemWidth / 2) - (notchWidth / 2),
            notchHeight * 0.8, // Control point
            itemWidth * i + (itemWidth / 2) - (notchWidth / 2) + cornerRadius,
            notchHeight
        );

        // Bottom line with slight curve
        final controlPointY = notchHeight + 2; // Slight curve in the bottom
        path.quadraticBezierTo(
            itemWidth * i + (itemWidth / 2),
            controlPointY,
            itemWidth * i + (itemWidth / 2) + (notchWidth / 2) - cornerRadius,
            notchHeight
        );

        // Right curve
        path.quadraticBezierTo(
            itemWidth * i + (itemWidth / 2) + (notchWidth / 2),
            notchHeight * 0.8, // Control point
            itemWidth * i + (itemWidth / 2) + (notchWidth / 2)  ,
            0
        );
      }

      path.lineTo(itemWidth * (i + 1),0);    }

    // Complete the rectangle
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

