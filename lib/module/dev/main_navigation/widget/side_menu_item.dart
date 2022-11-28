import 'package:example/core.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatefulWidget {
  final NavigationItem item;
  const SideMenuItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  bool subMenuExpanded = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isExpanded =
          constraint.maxWidth < MainNavigationViewState.instance.sidebarWidth
              ? false
              : true;

      if (isExpanded == false) return Container();
      return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: InkWell(
          onTap: () {
            if (widget.item.items.isNotEmpty) {
              subMenuExpanded = subMenuExpanded ? false : true;
              setState(() {});
              return;
            }
            go(widget.item.route);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 6.0,
            ),
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: widget.item.icon,
                    ),
                    if (isExpanded) ...[
                      const SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        child: Text(
                          widget.item.label,
                          style: const TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      ...[
                        if (widget.item.trailingBuilder != null)
                          widget.item.trailingBuilder!(),
                      ],
                      if (widget.item.items.isNotEmpty)
                        Transform.rotate(
                          angle: subMenuExpanded ? 1.6 : 0.0,
                          child: const Icon(
                            Icons.chevron_right,
                            size: 20.0,
                          ),
                        ),
                    ],
                  ],
                ),
                if (widget.item.items.isNotEmpty && isExpanded)
                  ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      ...List.generate(widget.item.items.length, (index) {
                        var item = widget.item.items[index];
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.only(
                            left: 16.0,
                          ),
                          height: subMenuExpanded ? 30.0 : 0.0,
                          child: InkWell(
                            onTap: () {
                              go(item.route);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: subMenuExpanded ? 6.0 : 0.0,
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                Expanded(
                                  child: Text(
                                    item.label,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                                ...[
                                  if (item.trailingBuilder != null)
                                    item.trailingBuilder!(),
                                ],
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
