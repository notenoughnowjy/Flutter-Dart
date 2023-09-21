import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Solo Travel App'),
        ),
        body: const SizedBox(
          width: 100,
          child: Text("Hello Flutter!"),
        ),
      ),
    );
  }
}
