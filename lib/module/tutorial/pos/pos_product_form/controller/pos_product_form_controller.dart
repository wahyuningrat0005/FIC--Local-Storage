import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosProductFormController extends State<PosProductFormView>
    implements MvcController {
  static late PosProductFormController instance;
  late PosProductFormView view;
  String? productName;
  double? price;
  String? description;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doSave() async {
    var newProduct = {
      "photo":
          "https://i.ibb.co/5MtbdTk/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": productName,
      "price": price,
      "description": description,
    };
    await ProductService.addProduct(newProduct);
    Get.back();
  }
}
