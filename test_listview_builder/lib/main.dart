import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Test"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 11,
          itemBuilder: ((context, index) {
            return Text('$index');
          }),
        ),
      ),
    );
  }
}
