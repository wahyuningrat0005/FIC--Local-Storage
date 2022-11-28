import 'package:flutter/material.dart';
import 'package:example/state_util.dart';

import '../view/tk_main_navigation_view.dart';

class TkMainNavigationController extends State<TkMainNavigationView>
    implements MvcController {
  static late TkMainNavigationController instance;
  late TkMainNavigationView view;
  late ScrollController scrollController;
  int selectedIndex = 0;

  @override
  void initState() {
    instance = this;
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List posts = [
    {
      "photo":
          "https://images.unsplash.com/photo-1579037199070-5ddf23c52bfc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
      "account": "@codingwithdeny",
      "title": "Tutorial bikin UI di Flutter",
      "tag": "#flutter #coding #mobile #desktop #android #web",
      "music": "Jrocks - Ceria",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1572177147505-c44e97033921?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
      "account": "@codingwithdeny",
      "title": "Tutorial bikin kopi yang enak",
      "tag": "#santai #flutter #coding",
      "music": "Ada Band - Manusia Bodoh",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1623838804048-d820eccdd088?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
      "account": "@codingwithdeny",
      "title": "Tutorial ngoding yang clean",
      "tag": "#cleancode #coding #mobile #desktop #android #web",
      "music": "Peterpan - Ada apa denganmu",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1600058644231-c99658f408ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80",
      "account": "@codingwithdeny",
      "title": "Tutorial record screen smartphone",
      "tag": "#recording #coding #mobile #desktop #android #web",
      "music": "Radiohead - Creep",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1557551439-26c230b385f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "account": "@codingwithdeny",
      "title": "Tutorial http request di Flutter",
      "tag": "#http #flutter #coding #mobile #desktop #android #web",
      "music": "Coldplay - Yellow",
    }
  ];

  onSwipeUp(BoxConstraints constraint) {
    print("UP SWIPE");
    scrollController.animateTo(
      selectedIndex * (constraint.biggest.height + 60),
      duration: const Duration(milliseconds: 900),
      curve: Curves.ease,
    );
    selectedIndex++;
    print("selectedIndex: $selectedIndex");
  }

  onSwipeDown(BoxConstraints constraint) {
    print("DOWN SWIPE");
    if (selectedIndex == 0) return;
    selectedIndex--;
    scrollController.animateTo(
      selectedIndex * (constraint.biggest.height + 60),
      duration: const Duration(milliseconds: 900),
      curve: Curves.ease,
    );
    print("selectedIndex: $selectedIndex");
  }
}
