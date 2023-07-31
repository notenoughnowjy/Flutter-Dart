import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyTabBarApp(),
    );
  }
}

class MyTabBarApp extends StatefulWidget {
  const MyTabBarApp({super.key});

  @override
  _MyTabBarAppState createState() => _MyTabBarAppState();
}

class _MyTabBarAppState extends State<MyTabBarApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: const Center(
              child: Text('탭 1의 내용'),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: const Center(
              child: Text('탭 2의 내용'),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
            child: const Center(
              child: Text('탭 3의 내용'),
            ),
          ),
        ],
      ),
    );
  }
}
