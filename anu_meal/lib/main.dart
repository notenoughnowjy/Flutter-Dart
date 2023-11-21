import 'package:flutter/material.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'ANU MEAL'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title; //
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANU meal"),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 26),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 300), // 위로 조금 이동
            padding: const EdgeInsets.fromLTRB(125, 200, 125, 200),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const Text(
              "Hello",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
