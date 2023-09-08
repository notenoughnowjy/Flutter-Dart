import 'package:flutter/material.dart';
import 'package:webttoonapp_2/models/webtoon_model.dart';
import 'package:webttoonapp_2/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("오늘의 웹툰!"),
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is Data!");
          }
          return const Text("Loading ... !");
        },
      ),
    );
  }
}
