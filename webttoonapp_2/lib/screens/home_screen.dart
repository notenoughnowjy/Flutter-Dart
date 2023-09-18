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
            // Column을 추가하고,
            return Column(
              children: [
                const SizedBox(
                  // SizedBox로 높이를 200으로 설정해준다
                  height: 200,
                ),
                // 함수를 만들어서 가독성을 높여준다.
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

// 반환 함수
  ListView makeList(AsyncSnapshot<List<WebtoonModel>> futureData) {
    // ListView.separated 사용
    return ListView.separated(
      // scroll방향을 수직으로 변경
      scrollDirection: Axis.horizontal,
      // itemCount
      itemCount: futureData.data!.length,
      // itemBuilder
      itemBuilder: (BuildContext context, int index) {
        // webtoon에 futureData의 값을 index 값으로 넣기
        var webtoon = futureData.data![index];
        return Column(
          children: [
            Container(
              width: 250,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              // 이미지 불러오기
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
      // ListView.separated SizedBox로 여백 남기기
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
