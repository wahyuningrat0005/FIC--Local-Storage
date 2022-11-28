import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrBasicDetailView extends StatefulWidget {
  final Map item;
  const TrBasicDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, TrBasicDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrBasicDetail"),
        actions: const [],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 3000),
        margin: EdgeInsets.only(
          top: controller.visible ? 0 : 200,
        ),
        child: AnimatedRotation(
          duration: const Duration(milliseconds: 600),
          turns: (controller.visible ? 0 : (360 * 6)) / 360,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 900),
            scale: controller.visible ? 1.0 : 0.0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 900),
              opacity: controller.visible ? 1.0 : 0.0,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      QTextField(
                        label: "First Name",
                        hint: "First Name",
                        validator: Validator.required,
                        value: item["first_name"],
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Last Name",
                        hint: "Last Name",
                        validator: Validator.required,
                        value: item["last_name"],
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Email",
                        hint: "Email",
                        validator: Validator.required,
                        value: item["email"],
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TrBasicDetailView> createState() => TrBasicDetailController();
}
