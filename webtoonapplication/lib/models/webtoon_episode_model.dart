class WebtoonEpisodeModel {
  final String id, title, rating, date;
// Map으로 class를 초기화할 생성자
  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
