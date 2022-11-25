import 'dart:async';

import 'package:flutter/material.dart';

class TkSLidingText extends StatefulWidget {
  const TkSLidingText({Key? key}) : super(key: key);

  @override
  State<TkSLidingText> createState() => _TkSLidingTextState();
}

class _TkSLidingTextState extends State<TkSLidingText> {
  late Timer timer;
  bool animated = false;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      animated = !animated;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.music_note,
          color: Colors.white,
          size: 16.0,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Container(
          color: Colors.transparent,
          height: 20.0,
          width: MediaQuery.of(context).size.width * 0.4,
          child: LayoutBuilder(builder: (context, constraint) {
            return Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 3000),
                  right: animated ? constraint.maxWidth : -100,
                  child: Text(
                    "JRocks - Ceria",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: !animated ? Colors.transparent : Colors.white,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
