import 'package:flutter/material.dart';
import 'package:webtoonapplication/screens/home_screen.dart';
import 'package:webtoonapplication/services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
