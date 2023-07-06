import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoonapplication/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

//비동기 프로그래밍
//api 요청을 받아올때까지 기다린다.

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      //리스트 webtoons에 json으로 반환되는 resposer.body를 넣어주기
      final List<dynamic> webtoons = jsonDecode(response.body);
      //리스트를 하나하나 출력
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
