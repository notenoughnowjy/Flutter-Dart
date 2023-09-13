import 'package:flutter/material.dart';
import 'package:webttoonapp_2/screens/home_screen.dart';

void main() {
  // ApiService().getTodaysToons();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
// 주석 테스트
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
