import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ChipUiView extends StatefulWidget {
  const ChipUiView({Key? key}) : super(key: key);

  Widget build(context, ChipUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChipUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              ExCard(
                title: "Basic",
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Chip(
                        backgroundColor: successColor,
                        label: const Text("successColor"),
                      ),
                      Chip(
                        backgroundColor: warningColor,
                        label: const Text("warningColor"),
                      ),
                      Chip(
                        backgroundColor: dangerColor,
                        label: const Text("dangerColor"),
                      ),
                      Chip(
                        backgroundColor: infoColor,
                        label: const Text("infoColor"),
                      ),
                      Chip(
                        backgroundColor: primaryColor,
                        label: const Text("primaryColor"),
                      ),
                      Chip(
                        backgroundColor: disabledColor,
                        label: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExCard(
                title: "Basic",
                color: primaryColor.withOpacity(0.2),
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: successColor,
                          ),
                        ),
                        child: Text(
                          "successColor",
                          style: TextStyle(
                            color: successColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: warningColor,
                          ),
                        ),
                        child: Text(
                          "warningColor",
                          style: TextStyle(
                            color: warningColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: dangerColor,
                          ),
                        ),
                        child: Text(
                          "dangerColor",
                          style: TextStyle(
                            color: dangerColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: infoColor,
                          ),
                        ),
                        child: Text(
                          "infoColor",
                          style: TextStyle(
                            color: infoColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: primaryColor,
                          ),
                        ),
                        child: Text(
                          "primaryColor",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(60.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: disabledColor,
                          ),
                        ),
                        child: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExCard(
                title: "Avatar",
                color: primaryColor.withOpacity(0.2),
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Chip(
                        backgroundColor: successColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: const Text("successColor"),
                      ),
                      Chip(
                        backgroundColor: warningColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: const Text("warningColor"),
                      ),
                      Chip(
                        backgroundColor: dangerColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: const Text("dangerColor"),
                      ),
                      Chip(
                        backgroundColor: infoColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: const Text("infoColor"),
                      ),
                      Chip(
                        backgroundColor: primaryColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: const Text("primaryColor"),
                      ),
                      Chip(
                        backgroundColor: disabledColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        label: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Chip(
                        backgroundColor: successColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: const Text("successColor"),
                      ),
                      Chip(
                        backgroundColor: warningColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: const Text("warningColor"),
                      ),
                      Chip(
                        backgroundColor: dangerColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: const Text("dangerColor"),
                      ),
                      Chip(
                        backgroundColor: infoColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: const Text("infoColor"),
                      ),
                      Chip(
                        backgroundColor: primaryColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: const Text("primaryColor"),
                      ),
                      Chip(
                        backgroundColor: disabledColor,
                        avatar: const CircleAvatar(
                          child: Text("A"),
                        ),
                        label: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExCard(
                title: "Icon",
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Chip(
                        backgroundColor: successColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("successColor"),
                      ),
                      Chip(
                        backgroundColor: warningColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("warningColor"),
                      ),
                      Chip(
                        backgroundColor: dangerColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("dangerColor"),
                      ),
                      Chip(
                        backgroundColor: infoColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("infoColor"),
                      ),
                      Chip(
                        backgroundColor: primaryColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("primaryColor"),
                      ),
                      Chip(
                        backgroundColor: disabledColor,
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExCard(
                title: "Avatar+Icon",
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Chip(
                        backgroundColor: successColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("successColor"),
                      ),
                      Chip(
                        backgroundColor: warningColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("warningColor"),
                      ),
                      Chip(
                        backgroundColor: dangerColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("dangerColor"),
                      ),
                      Chip(
                        backgroundColor: infoColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("infoColor"),
                      ),
                      Chip(
                        backgroundColor: primaryColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: const Text("primaryColor"),
                      ),
                      Chip(
                        backgroundColor: disabledColor,
                        avatar: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        deleteIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: disabledTextColor,
                            child: const Icon(
                              Icons.close,
                              size: 10.0,
                            ),
                          ),
                        ),
                        onDeleted: () {},
                        label: Text(
                          "disabledColor",
                          style: TextStyle(
                            color: disabledTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChipUiView> createState() => ChipUiController();
}
