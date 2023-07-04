import 'package:flutter/material.dart';
import 'package:webtoonapp/services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // 위젯의 key를 stateless widget이라는 슈퍼클래스에 보낸다.
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          //음영 조절
          elevation: 2,
          title: const Text(
            "오늘의 웹툰",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
