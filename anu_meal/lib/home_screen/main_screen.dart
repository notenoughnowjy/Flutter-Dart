import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewDateforMealScreen {
  String getFormattedDate(DateTime date) {
    var formatter = DateFormat('yyyy년 MM월 dd일');
    String formattedDate = formatter.format(date);
    return formattedDate;
  }
}

class MealScreen extends StatelessWidget {
  // ScrollController를 생성합니다.
  final ScrollController _controller =
      ScrollController(initialScrollOffset: 0.0);

  final List<String> itemTexts = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

  // 이 메소드는 ListView가 그려진 후에 호출됩니다.
  void _scrollToThirdItem() {
    // ListView의 아이템 사이즈와 margin을 고려하여 offset을 계산합니다.
    // 아이템의 크기가 동적으로 변한다면, 이 부분은 수정이 필요합니다.
    const double offset = (572.0 + 28.0 * 2) * 2; // 아이템 높이 + margin * 2번째 인덱스

    // ListView를 3번째 아이템 위치로 스크롤합니다.
    _controller.jumpTo(offset);
  }

  MealScreen({Key? key}) : super(key: key) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToThirdItem());
  }

  @override
  Widget build(BuildContext context) {
    NewDateforMealScreen newDateforMealScreen = NewDateforMealScreen();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 35, 10, 60),
            child: SizedBox(
              height: 500,
              child: ListView.separated(
                controller: _controller, // 생성한 컨트롤러를 ListView에 연결합니다.
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (context, index) {
                  DateTime date = DateTime.now().add(Duration(days: index - 4));
                  return Column(
                    children: [
                      Text(
                        newDateforMealScreen.getFormattedDate(date),
                        style: const TextStyle(fontSize: 23),
                      ),
                      Container(
                        width: 300,
                        height: 400,
                        margin: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xFF63B4C1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  const Text(
                                    "Brunch",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  const Text(
                                    "Dinner",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
