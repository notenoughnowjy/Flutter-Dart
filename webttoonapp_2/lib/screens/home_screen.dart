import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:webttoonapp_2/models/webtoon_model.dart';
import 'package:webttoonapp_2/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

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
        builder: (context, futureData) {
          if (futureData.hasData) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: futureData.data!.length,
              itemBuilder: (BuildContext context, int index) {
                var webtoon = futureData.data![index];
                return Text(webtoon.title);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 20,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
