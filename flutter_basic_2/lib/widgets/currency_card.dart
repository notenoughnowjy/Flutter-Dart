import 'package:flutter/material.dart';

class Currencycard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xff1f2123);

  const Currencycard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: order == 0 ? const Offset(0, 0) : Offset(0, order * -30),
      child: Container(
          clipBehavior: Clip.hardEdge, //로고 자르기
          decoration: BoxDecoration(
            color: isInverted
                ? Colors.white
                : _blackColor, // 이 부분만 white와 _blackColor를 반대로
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            //전체 여백
            padding: const EdgeInsets.all(
              30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted
                                ? _blackColor
                                : Colors.white.withOpacity(0.8),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  // 아이콘 또는 박스만 이동하기 위해서 하는 것 => 전체 이동은 sizebox + height를 통해서 함
                  child: Transform.translate(
                    offset: const Offset(-5, 12),
                    child: Icon(
                      icon,
                      size: 88,
                      color: isInverted ? _blackColor : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
