import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(),
      home: const Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            "data",
          ),
        ],
      ),
    );
  }
}
