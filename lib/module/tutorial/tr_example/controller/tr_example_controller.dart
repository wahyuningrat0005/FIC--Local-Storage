import 'package:example/config.dart';
import 'package:example/core.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class TrExampleController extends State<TrExampleView>
    implements MvcController {
  static late TrExampleController instance;
  late TrExampleView view;
  Faker faker = Faker.instance;
  // int counter = 0;
  ValueNotifier<int> counter = ValueNotifier(0);

  @override
  void initState() {
    instance = this;
    loadEmployee();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List employeeList = [];
  int employeeCount = 0;

/*
URL:
METHOD: GET, DELETE, POST, PUT
HEADER:
DATA:

WEB, DESKTOP, ANDROID, IOS
*/
  loadEmployee() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/employee",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    employeeList = obj["data"];
    await loadEmployeeCount();
    setState(() {});
  }

  loadEmployeeCount() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/employee/action/count",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    employeeCount = obj["data_count"];
  }

  generate() async {
    showLoading();
    for (var i = 0; i < 5; i++) {
      var response = await Dio().post(
        "${AppConfig.baseUrl}/employee",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
          "name": faker.name.fullName(),
          "email": faker.internet.email(),
        },
      );
    }
    await loadEmployee();
    hideLoading();
  }

  delete(Map item) async {
    showLoading();
    var id = item["id"];
    var response = await Dio().delete(
      "${AppConfig.baseUrl}/employee/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    print(response.statusCode);
    await loadEmployee();
    hideLoading();
  }

  update(Map item) async {
    showLoading();

    var id = item["id"];
    item["name"] = faker.name.fullName();

    var response = await Dio().post(
      "${AppConfig.baseUrl}/employee/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: item,
    );
    Map obj = response.data;
    await loadEmployee();
    hideLoading();
  }
}
