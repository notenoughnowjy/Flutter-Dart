import 'package:flutter/material.dart';

class EntireApplicationbar extends StatelessWidget
    implements PreferredSizeWidget {
  const EntireApplicationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("ANU_MEAL"),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 26),
      centerTitle: true,
      backgroundColor: const Color(0xff63B4C1),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
