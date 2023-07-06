import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoonapplication/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

//비동기 프로그래밍
//api 요청을 받아올때까지 기다린다.

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    //response가 반환되는지 확인
    final response = await http.get(url);
    if (response.statusCode == 200) {
      //webtoons에 json으로 반환되는 resposer.body를 넣어주기
      final webtoons = jsonDecode(response.body);
      // for(var webtoon in jsonDecode(response.body))도 가능하다.
      //리스트를 하나하나 출력
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
