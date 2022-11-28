import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color color;
  final String name;
  final dynamic label;
  final double? width;
  final double? height;
  final double? radius;

  const ColorWidget({
    Key? key,
    required this.color,
    required this.name,
    this.label,
    this.width,
    this.height,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width ?? 60.0,
          height: height ?? 60.0,
          decoration: BoxDecoration(
            borderRadius: radius == null
                ? null
                : BorderRadius.all(
                    Radius.circular(radius!),
                  ),
            color: color,
          ),
          child: Center(
            child: Text(
              "${label ?? ''}",
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
