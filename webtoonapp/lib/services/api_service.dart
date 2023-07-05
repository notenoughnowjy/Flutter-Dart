import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/Webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

// 1. await를 사용하려면 async 안에 있어야 한다.
// 2. 코드를 실행하는 중 어떠한 것을 기다려야 할 때는 async / awiat를 사용한다.(Future 타입)
  Future<List<webtoonmodel>> getTodaysToons() async {
    List<webtoonmodel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    // gettodaysToons 함수가 호출되면 http.get 부분이 처리되고 반환되는 것을 기다린다. -> 비동기 프로그래밍(어떤일이 일어날때까지 기다린다.)
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        //많이 사용되어지는 fromJson 방식이다.
        final instance = webtoonmodel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      // print(webtoonInstances);
      return webtoonInstances;
    }
    throw Error();
  }
}
