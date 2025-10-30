import 'package:flutter/material.dart';

void main() {
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: const Text(
            'Hello my name is Hong !',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 50,
            ),
          ),
        ),
      ),
    ),
  );
}

