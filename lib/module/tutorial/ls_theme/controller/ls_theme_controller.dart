import 'package:example/core.dart';
import 'package:flutter/material.dart';



class LsThemeController extends State<LsThemeView> implements MvcController {
  static late LsThemeController instance;
  late LsThemeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doUpdateTheme(int index) {
    ThemeService.save(index);
    mainStorage.put("theme", index);
    setState(() {});
  }
}
