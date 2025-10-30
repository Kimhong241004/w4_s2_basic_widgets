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
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  
                    _buildPill(
                      color: Colors.blue[100]!,
                      text: 'OOP',
                      fontSize: 26,
                    ),
                    const SizedBox(height: 20),
                    
                    _buildPill(
                      color: Colors.blue[300]!,
                      text: 'DART',
                      fontSize: 26,
                    ),
                    const SizedBox(height: 20),
                    
                    _buildPill(
                      color: Colors.blue[600]!,
                      text: 'FLUTTER',
                      fontSize: 26,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _buildPill({required Color color, required String text, double fontSize = 20}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

// Gradient helper removed because the gradient was disabled; keep _buildPill for plain pills.
