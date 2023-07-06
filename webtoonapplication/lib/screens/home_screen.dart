import 'package:flutter/material.dart';
import 'package:webtoonapplication/models/webtoon_model.dart';
import 'package:webtoonapplication/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoonsList = [];
  bool isLoading = true;

//http 요청을 기다리는 함수를 기다려야 한다. => 비동기 프로그래밍
  void waitForWebToons() async {
    webtoonsList = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoonsList);
    print(isLoading);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
