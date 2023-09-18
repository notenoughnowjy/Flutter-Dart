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
            return Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Expanded(child: makeList(futureData))
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> futureData) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: futureData.data!.length,
      itemBuilder: (BuildContext context, int index) {
        var webtoon = futureData.data![index];
        return Column(
          children: [
            Container(
              width: 250,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(webtoon.thumb),
            ),
            Text(
              webtoon.title,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
