import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//StatefulWidget을 넣어줘야 한다.
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

// 앱의 데이터를 가지고 있는 부분이다.
class _MainAppState extends State<MainApp> {
  int counter = 0;
// onclicked 메서드 선언 및 데이터 입력
  void onClicked() {
    // setState는 State 클래스에게 데이터가 변경되었다고 알리는 함수이다.
    // setState를 호출 하지 않는다면 build method는 실행되지 않는다.

    setState(() {
      counter = counter + 1;
    });
  }

  void onMinused() {
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click count',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onClicked,
                    iconSize: 70,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                  IconButton(
                    onPressed: onMinused,
                    iconSize: 70,
                    icon: const Icon(Icons.remove_circle),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
