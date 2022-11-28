import 'package:example/core.dart';
import 'package:flutter/material.dart';


class HttpProductListController extends State<HttpProductListView>
    implements MvcController {
  static late HttpProductListController instance;
  late HttpProductListView view;

  @override
  void initState() {
    instance = this;
    loadProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List productList = [];
  loadProducts() async {
    Map obj = await ProductExampleService.getProducts();
    print(obj);
    productList = obj["data"];
    setState(() {});
  }

  generateProducts() async {
    await ProductExampleService.generateProducts();
    await loadProducts();
  }

  deleteItem(dynamic id) async {
    await ProductExampleService.delete(id);
    await loadProducts();
  }
}
