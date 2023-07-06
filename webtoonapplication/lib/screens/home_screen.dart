import 'package:flutter/material.dart';
import 'package:webtoonapplication/models/webtoon_model.dart';
import 'package:webtoonapplication/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  //const는 컴파일 전에 값을 알고 있다는 뜻.
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoonList = ApiService.getTodaysToons();
  @override
  Widget build(BuildContext context) {
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
      body: FutureBuilder(
        future: webtoonList,
        builder: (context, snapshot) {
          // snapshot을 이용해 Future의 상태 확인
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot))
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

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Column(
          children: [
            Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: const Offset(10, 8),
                        color: Colors.red.withOpacity(0.5))
                  ]),
              child: Image.network(
                webtoon.thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              webtoon.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
