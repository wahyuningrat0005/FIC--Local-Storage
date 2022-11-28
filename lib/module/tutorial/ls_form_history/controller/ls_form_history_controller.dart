import 'package:example/service/form_history_service.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_form_history_view.dart';

class LsFormHistoryController extends State<LsFormHistoryView>
    implements MvcController {
  static late LsFormHistoryController instance;
  late LsFormHistoryView view;

  @override
  void initState() {
    instance = this;
    name = FormHistoryService.name;
    address = FormHistoryService.address;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String name = "";
  String address = "";

  saveHistory() async {
    await FormHistoryService.save(
      name: name,
      address: address,
    );
  }
}
