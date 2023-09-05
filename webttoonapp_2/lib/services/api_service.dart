import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webttoonapp_2/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    // https://webtoon-crawler.nomadcoders.workers.dev/today 라고 링크지어진다.
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // log(response.body);
      // String type을 json타입으로 쉽게 바꾸어주는 jsonDecode 함수
      // jsonDecode의 type은 dynamic이라서 List의 type을 dynamic으로 선언한다.
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
