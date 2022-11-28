import 'package:example/core.dart';
import 'package:flutter/material.dart';

class FicThemeController extends State<FicThemeView> implements MvcController {
  static late FicThemeController instance;
  late FicThemeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<ThemeData> themeList = [
    lightTheme,
    darkTheme,
    purpleTheme,
  ];
  int selectedindex = 0;
}
