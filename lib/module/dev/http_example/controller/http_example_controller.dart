import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/http_example_view.dart';

class HttpExampleController extends State<HttpExampleView>
    implements MvcController {
  static late HttpExampleController instance;
  late HttpExampleView view;
  int counter = 1;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateCounter() {
    counter++;
    update();
  }

  generateDummy() async {
    //dio_post
    var response = await Dio().post(
      "http://localhost:8080/dynamic-api/customers",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "customer_name": "Badu",
        "address": "Depok",
        "tiktok": "https://tiktok.com/@codingwithdeny"
      },
    );
    Map obj = response.data;
  }

  deleteItem(id) async {
    var id = 2;
    var response = await Dio().delete(
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      "http://localhost:8080/dynamic-api/customers/$id",
    );
  }
}
