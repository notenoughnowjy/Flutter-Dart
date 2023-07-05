class Webtoon_model {
  late final String title, thumb, id;

// 받는 데이터의 각 부분에 해당하는 값을 받는다.
// title = '6666년 만에 한생한 흑마법사'
// thumb = '링크'
// id = '775141'
// 등으로 받는다.

//Map<k, v>이다.
// k = key v = value
// key는 JSON의 key이고, value는 JSON의 body이다.
//   Webtoon_model(Map<String, dynamic> json)
//       : title = json['title'],
//         thumb = json['thumb'],
//         id = json['id'];
// }

  // Webtoon_model(Map<String, dynamic> json) {
  //   title = json['title'];
  //   id = json['id'];
  //   thumb = json['thumb'];
  // }
// }

// 많이 사용되어지는 방식이다.
  Webtoon_model.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
