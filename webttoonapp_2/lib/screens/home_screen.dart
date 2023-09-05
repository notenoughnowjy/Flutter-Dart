import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("오늘의 웹툰!"),
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
      ),
    );
  }
}
