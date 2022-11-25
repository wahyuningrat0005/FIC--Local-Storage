import 'dart:async';

import 'package:flutter/material.dart';

class TKRotatedCircleAvatar extends StatefulWidget {
  const TKRotatedCircleAvatar({Key? key}) : super(key: key);

  @override
  State<TKRotatedCircleAvatar> createState() => _TKRotatedCircleAvatarState();
}

class _TKRotatedCircleAvatarState extends State<TKRotatedCircleAvatar> {
  late Timer timer;
  bool rotated = false;

  @override
  void initState() {
    // TODO: implement initState
    timer = Timer.periodic(const Duration(milliseconds: 1200), (timer) {
      rotated = !rotated;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var degree = rotated ? 360 : 0;
    return AnimatedRotation(
      duration: const Duration(milliseconds: 900),
      turns: degree / 360,
      child: CircleAvatar(
        backgroundColor: Colors.grey[900],
        child: const Text(
          "TJ",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
