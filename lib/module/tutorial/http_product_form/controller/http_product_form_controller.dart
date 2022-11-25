import 'package:example/service/product_example_service.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/http_product_form_view.dart';

class HttpProductFormController extends State<HttpProductFormView>
    implements MvcController {
  static late HttpProductFormController instance;
  late HttpProductFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();

    if (widget.item != null) {
      productName = widget.item!["product_name"];
      price = double.parse("${widget.item!["price"]}");
      description = widget.item!["description"];
    }
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String productName = "";
  double price = 0;
  String description = "";
  String get randomPhoto {
    List images = [
      "https://i.ibb.co/rHg3M1p/photo-1503508343067-c4103b7140b3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "https://i.ibb.co/7gWtJrM/photo-1517481705099-72660903e569-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "https://i.ibb.co/Q9P0Twh/photo-1495624423019-fdbb969dd0fe-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "https://i.ibb.co/cykDvTw/photo-1476270874743-4db8ec55dd69-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "https://i.ibb.co/yY2bXgC/photo-1530982011887-3cc11cc85693-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    ];
    images.shuffle();
    return images.first;
  }

  bool get isCreateMode {
    return widget.item == null;
  }

  doSave() async {
    if (isCreateMode) {
      ProductExampleService.create(
        productName: productName,
        photo: randomPhoto,
        price: price,
        description: description,
      );
    } else {
      await ProductExampleService.update(
        id: widget.item!["id"],
        productName: productName,
        photo: randomPhoto,
        price: price,
        description: description,
      );
    }
    Get.back();
  }
}
