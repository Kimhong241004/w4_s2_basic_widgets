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
                children: const [
                  // Using CustomCard widget for each item
                  CustomCard(text: 'OOP', color: Colors.blueAccent),
                  SizedBox(height: 20),
                  CustomCard(text: 'DART', color: Colors.blue),
                  SizedBox(height: 20),
                  // Bonus: gradient example
                  CustomCard(
                    text: 'FLUTTER',
                    gradient: LinearGradient(
                      colors: [Color(0xFF42A5F5), Color(0xFF0D47A1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
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
  final Color color;
  final Gradient? gradient;

  const CustomCard({Key? key, required this.text, this.color = Colors.blue, this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: gradient == null ? color : null,
        gradient: gradient,
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
