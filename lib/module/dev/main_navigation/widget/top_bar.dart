import 'package:example/core.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isExpanded = constraint.maxWidth > 50;

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: isExpanded ? 12.0 : 0,
          vertical: 6.0,
        ),
        decoration: const BoxDecoration(
          // color: Theme.of(context).drawerTheme.backgroundColor,
          color: Color(0xff404E67),
          // color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            if (isExpanded)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CNG",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.bungee(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Write less do more",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.bungee(
                            fontSize: 8.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
    });
  }
}
