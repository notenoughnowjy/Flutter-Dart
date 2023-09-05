import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    // https://webtoon-crawler.nomadcoders.workers.dev/today 라고 링크지어진다.
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      log(response.body);
      return;
    }
    throw Error();
  }
}
