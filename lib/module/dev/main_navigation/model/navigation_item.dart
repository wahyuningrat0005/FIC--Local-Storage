import 'package:flutter/material.dart';

class NavigationItem {
  final Widget icon;
  final String label;
  final String route;
  final List<NavigationItem> items;
  final Function? trailingBuilder;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.route,
    this.items = const [],
    this.trailingBuilder,
  });
}
