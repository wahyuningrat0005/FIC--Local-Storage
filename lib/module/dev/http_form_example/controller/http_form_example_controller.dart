import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HttpFormExampleController extends State<HttpFormExampleView>
    implements MvcController {
  static late HttpFormExampleController instance;
  late HttpFormExampleView view;
  final formKey = GlobalKey<FormState>();
  String category = "";

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode {
    return view.item != null;
  }

  save() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    var customerName = Input.get("customer_name");
    var address = Input.get("address");
    var tiktok = Input.get("tiktok");

    if (isEditMode) {
      var id = view.item!["id"];
      var response = await Dio().post(
        "http://localhost:8080/dynamic-api/customers/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "customer_name": customerName,
          "address": address,
          "tiktok": tiktok,
        },
      );
      Map obj = response.data;
    } else {
      var response = await Dio().post(
        "http://localhost:8080/dynamic-api/customers",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "customer_name": customerName,
          "address": address,
          "tiktok": tiktok,
        },
      );
      Map obj = response.data;
    }

    Get.back();
  }
}
