import 'package:flutter/material.dart';

class TrBasicItem extends StatefulWidget {
  final Map item;
  final Function onTap;
  final int index;
  const TrBasicItem({
    Key? key,
    required this.item,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  @override
  State<TrBasicItem> createState() => _TrBasicItemState();
}

class _TrBasicItemState extends State<TrBasicItem> {
  bool visible = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: widget.index * 200), () {
      visible = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.green[900 - ((widget.index + 1) * 100)]!;
    if (visible) {
      color = Colors.red[900 - ((widget.index + 1) * 100)]!;
    }
    return InkWell(
      onTap: () => widget.onTap(),
      child: AnimatedRotation(
        duration: const Duration(milliseconds: 900),
        turns: (visible ? 0 : 720) / 360,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 900),
          scale: visible ? 1.0 : 0.0,
          // turns: (visible ? 0 : 720) / 360,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 900),
            opacity: visible ? 1.0 : 0.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 2000),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              margin: const EdgeInsets.only(
                bottom: 12.0,
              ),
              child: ListTile(
                // leading: CircleAvatar(
                //   backgroundColor: Colors.grey[200],
                //   backgroundImage: NetworkImage(
                //     widget.item["avatar"],
                //   ),
                // ),
                leading: AnimatedRotation(
                  duration: const Duration(milliseconds: 2000),
                  turns: (visible ? 0 : (360 * 4)) / 360,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          widget.item["avatar"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: AnimatedScale(
                  duration: const Duration(milliseconds: 2000),
                  scale: visible ? 1.0 : 0.0,
                  child: Text(
                      "${widget.item["first_name"]} ${widget.item["last_name"]}"),
                ),
                subtitle: AnimatedScale(
                  duration: const Duration(milliseconds: 2000),
                  scale: visible ? 1.0 : 0.0,
                  child: Text("${widget.item["email"]}"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
