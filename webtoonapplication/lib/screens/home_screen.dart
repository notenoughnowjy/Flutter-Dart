import 'package:flutter/material.dart';
import 'package:webtoonapplication/models/webtoon_model.dart';
import 'package:webtoonapplication/services/api_service.dart';
import 'package:webtoonapplication/widgets/webtoon_widget.dart';

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
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
