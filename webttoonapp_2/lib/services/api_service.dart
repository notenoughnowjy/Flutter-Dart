import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webttoonapp_2/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

// Future은 지금 당장 끝나지 않는 작업을 기다리는 코드이다.
  static Future<List<WebtoonModel>> getTodaysToons() async {
    // https://webtoon-crawler.nomadcoders.workers.dev/today 라고 링크지어진다.
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // log(response.body);
      // String type을 json타입으로 쉽게 바꾸어주는 jsonDecode 함수
      // jsonDecode의 type은 dynamic이라서 List의 type을 dynamic으로 선언한다.
      // reponse.body는 그냥 String 문자열이고 이것을 json 타입으로 변환해서 출력한다.
      final webtoons =
          jsonDecode(response.body); // 결국 webtoons에 json형식으로 리스트로 값이 들어간다

      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }

      // for (var test_value in webtoonInstances) {
      //   print(test_value);
      // }

      return webtoonInstances;
    }
    throw Error();
  }
}
