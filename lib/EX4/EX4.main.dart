import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Using CustomCard widget for each item
                  // Example uses Material color shades (Colors.blue[100], etc.)
                  CustomCard(text: 'OOP', color: Colors.blue[100]),
                  const SizedBox(height: 20),
                  CustomCard(text: 'DART', color: Colors.blue[300]),
                  const SizedBox(height: 20),
                  // Simple solid color example to match provided format
                  CustomCard(
                    text: 'FLUTTER',
                    color: Colors.blue[600],
                  ),
                  const SizedBox(height: 20),
                    CustomCard(
                    text: 'Bonus',
                    color: const Color.fromARGB(255, 0, 100, 250),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String text;
  // allow nullable so callers can pass Colors.blue[100]
  final Color? color;
  // direct Gradient if caller wants to provide one
  final Gradient? gradient;
  // bonus: accept a list of colors and build a LinearGradient from them
  final List<Color>? gradientColors;

  const CustomCard({
    Key? key,
    required this.text,
    this.color,
    this.gradient,
    this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If gradientColors provided, construct a LinearGradient (takes precedence)
    Gradient? effectiveGradient = gradient;
    if (gradientColors != null && gradientColors!.isNotEmpty) {
      effectiveGradient = LinearGradient(
        colors: gradientColors!,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
    }

    final Color effectiveColor = color ?? Colors.blue;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 56),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: effectiveGradient == null ? effectiveColor : null,
        gradient: effectiveGradient,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
