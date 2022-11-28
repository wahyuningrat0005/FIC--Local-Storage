import 'package:badges/badges.dart';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

class BadgeUiView extends StatefulWidget {
  const BadgeUiView({Key? key}) : super(key: key);

  Widget build(context, BadgeUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BadgeUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExCard(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.32,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Basic",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              BadgeText(
                                text: "New",
                                backgroundColor: primaryColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: disabledColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: successColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: dangerColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: warningColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                isButton: false,
                                text: "New",
                                backgroundColor: infoColor,
                              ).md(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExCard(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.32,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Badge Sizing",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              BadgeText(
                                text: "New",
                                backgroundColor: primaryColor,
                              ).xl(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: disabledColor,
                              ).lg(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: successColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: dangerColor,
                              ).sm(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: warningColor,
                              ).xs(),
                              const SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExCard(
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Lighten",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              BadgeText(
                                text: "New",
                                backgroundColor: primaryColor.withOpacity(0.3),
                                textColor: primaryColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: disabledColor.withOpacity(0.3),
                                textColor: disabledColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: successColor.withOpacity(0.3),
                                textColor: successColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: dangerColor.withOpacity(0.3),
                                textColor: dangerColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: warningColor.withOpacity(0.3),
                                textColor: warningColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                isButton: false,
                                text: "New",
                                backgroundColor: infoColor.withOpacity(0.3),
                                textColor: infoColor,
                              ).md(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExCard(
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Notification Badge - Varian 1 ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            text: "New",
                            backgroundColor: primaryColor,
                          ).md(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            text: "New",
                            backgroundColor: disabledColor,
                          ).md(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            text: "New",
                            backgroundColor: successColor,
                          ).md(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            text: "New",
                            backgroundColor: dangerColor,
                          ).md(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                            ),
                            text: "New",
                            backgroundColor: warningColor,
                          ).md(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                            ),
                            showBadge: true,
                            isButton: false,
                            text: "New",
                            backgroundColor: infoColor,
                          ).md(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ExCard(
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Outlined",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              BadgeText(
                                text: "New",
                                backgroundColor: primaryColor,
                                textColor: primaryColor,
                                outline: true,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: disabledColor,
                                outline: true,
                                textColor: disabledColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: successColor,
                                outline: true,
                                textColor: successColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                text: "New",
                                backgroundColor: dangerColor,
                                outline: true,
                                textColor: dangerColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                outline: true,
                                text: "New",
                                backgroundColor: warningColor,
                                textColor: warningColor,
                              ).md(),
                              const SizedBox(
                                width: 10.0,
                              ),
                              BadgeText(
                                outline: true,
                                text: "New",
                                backgroundColor: infoColor,
                                textColor: infoColor,
                              ).md(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExCard(
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Colors.white,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Notification Badge - Varian 2 ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            text: "New",
                            backgroundColor: primaryColor,
                          ).xl(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            text: "New",
                            backgroundColor: disabledColor,
                          ).xl(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            text: "New",
                            backgroundColor: successColor,
                          ).xl(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            text: "New",
                            backgroundColor: dangerColor,
                          ).xl(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            showBadge: true,
                            text: "New",
                            backgroundColor: warningColor,
                          ).xl(),
                          const SizedBox(
                            width: 10.0,
                          ),
                          BadgeText(
                            showBadge: true,
                            badgeContent: Container(
                              width: 10.0,
                              height: 10,
                              alignment: Alignment.center,
                              child: const Text(
                                "6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0),
                              ),
                            ),
                            position: BadgePosition.topEnd(top: 8, end: -5),
                            text: "New",
                            backgroundColor: infoColor,
                          ).xl(),
                        ],
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
  State<BadgeUiView> createState() => BadgeUiController();
}
