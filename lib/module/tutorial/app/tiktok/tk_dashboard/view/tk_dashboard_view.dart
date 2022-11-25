import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/tk_dashboard_controller.dart';

class TkDashboardView extends StatefulWidget {
  const TkDashboardView({Key? key}) : super(key: key);

  Widget build(context, TkDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TkDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TkDashboardView> createState() => TkDashboardController();
}