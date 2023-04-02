import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!"),
        ),
        body: Center(
          child: Text("Hello world!"),
        ),
      ),
    );
    // material - 구글과 cupertino - ios가 있다.
  }
}
