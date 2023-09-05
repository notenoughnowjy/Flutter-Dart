// ignore_for_file: public_member_api_docs, sort_constructors_first
class WebtoonModel {
  final String title, thumb, id;
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}


/* 
{id: 814885, 
title: 그 남학생에게 고백하지 마십시오, 
thumb: https://image-comic.pstatic.net/webtoon/814885/thumbnail/thumbnail_IMAG21_d51ba02b-f270-46f5-9a92-fc5257f4665a.jpg}

위의 것들을 받기 때문에 named constructors로 초기화 해주고 가독성을 높인다.
*/
