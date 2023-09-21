import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home_screen.dart';
import 'package:practice_flutter/services/api_service.dart';

void main() {
  runApp(const MainApp());
  ApiService().getAirplaneSchedule();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
