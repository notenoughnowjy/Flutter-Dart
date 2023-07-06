class WebtoonModel {
  final String title, thumb, id;

//named constructor
//map은 object처럼 Dart가 지원하는 key-value 데이터 구조이다.
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];

//   late final String title, thumb, id;
// //이 코드에서는 앞의 webtoonInstances.add(WebtoonModel.fromJson(webtoon)); 부분에서 fromJson만 지워주면 된다.
// // 하지만 웹툰 Json으로 WebtoomModel 인스턴스를 만드는게 전부임.
//   WebtoonModel.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     thumb = json['thumb'];
//     id = json['id'];
//   }
}
