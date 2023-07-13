import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webtoonapplication/models/webtoon_detail_model.dart';
import 'package:webtoonapplication/models/webtoon_episode_model.dart';
import 'package:webtoonapplication/services/api_service.dart';
import 'package:webtoonapplication/widgets/episode_widget.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;
  late SharedPreferences prefs;
  bool isLiked = false;

// isliked 부분
  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final likeToons = prefs.getStringList('likedToons');
    if (likeToons != null) {
      if (likeToons.contains(widget.id) == true) {
        setState(() {
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList('likedToons', []);
    }
  }

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodesById(widget.id);
    initPrefs();
  }

// isliked부분
  onHeartTap() async {
    final likeToons = prefs.getStringList('likedToons');
    if (likeToons != null) {
      if (isLiked) {
        likeToons.remove(widget.id);
      } else {
        likeToons.add(widget.id);
      }
      await prefs.setStringList('likedToons', likeToons);
      setState(() {
        isLiked = !isLiked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          //appbar에서의 isliked action
          actions: [
            IconButton(
              onPressed: onHeartTap,
              icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
            )
          ],
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: widget.id,
                      child: Container(
                        width: 250,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              offset: const Offset(10, 8),
                              color: Colors.red.withOpacity(0.5),
                            ),
                          ],
                        ),
                        child: Image.network(
                          widget.thumb,
                          headers: const {
                            "User-Agent":
                                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                FutureBuilder(
                  future: webtoon,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data!.about,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '${snapshot.data!.genre} / ${snapshot.data!.age}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const Text("...");
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                FutureBuilder(
                  future: episodes,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var episode = snapshot.data![index];
                              return ListTile(
                                title: Episode(
                                    episode: episode, webtoonid: widget.id),
                              );
                            },
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
