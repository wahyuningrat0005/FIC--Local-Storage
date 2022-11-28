import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsProductListController extends State<LsProductListView>
    implements MvcController {
  static late LsProductListController instance;
  late LsProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  add() async {
    List productNameList = [
      "GG FILTER",
      "OD CIPTADENT",
      "MIE SARIMI REBUS",
      "TEH GELAS",
    ];
    productNameList.shuffle();
    var productname = productNameList.first;

    LocalProductService.add(
      {
        "id": 1,
        "photo":
            "https://images.unsplash.com/photo-1594631252845-29fc4cc8cde9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        "product_name": productname,
        "price": Random().nextInt(1000),
        "category": "Drink",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
    );
    setState(() {});
  }

  delete(Map item) async {
    await LocalProductService.delete(item);
    setState(() {});
  }

  update(int index, Map item) {
    item["price"] = Random().nextInt(1000);
    LocalProductService.update(index, item);
    setState(() {});
  }
}
