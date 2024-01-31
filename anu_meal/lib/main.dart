import 'package:flutter/material.dart';
import 'package:flutter_basic_01/home_screen/calendar.dart';
import 'package:flutter_basic_01/home_screen/entireappbar.dart';
import 'package:flutter_basic_01/home_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANU MEAL',
      theme: ThemeData(),
      home: const MyHomePage(title: 'ANU MEAL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var showClass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EntireApplicationbar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (() {
                    setState(() {
                      showClass = true;
                    });
                  }),
                  style: TextButton.styleFrom(
                      foregroundColor: showClass ? Colors.blue : Colors.black),
                  child: const Text("리스트")),
              TextButton(
                  onPressed: (() {
                    setState(() {
                      showClass = false;
                    });
                  }),
                  style: TextButton.styleFrom(
                      foregroundColor: showClass ? Colors.black : Colors.blue),
                  child: const Text("달력"))
            ],
          ),
          Expanded(
            child: showClass ? MealScreen() : const SubCalendar(),
          ),
        ],
      ),
    );
  }
}
