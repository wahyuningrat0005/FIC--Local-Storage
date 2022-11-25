import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TutorialExtensionView extends StatefulWidget {
  const TutorialExtensionView({Key? key}) : super(key: key);

  Widget build(context, TutorialExtensionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialExtension"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //Alt+Shift+H
              SizedBox(
                height: 80.0 + 208,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        child: SizedBox(
                          width: 160.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160.0,
                                width: 160.0,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  color: Colors.blue[400],
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(6.0),
                                      margin: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.green[800],
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            12.0,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "PROMO",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Roti bakar Cimanggis",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "8.2 km",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        const Icon(
                                          Icons.circle,
                                          size: 4.0,
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange[400],
                                          size: 16.0,
                                        ),
                                        const Text(
                                          "4.8",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "Bakery & Cake . Breakfast . Snack",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "€24",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //Alt+Shift+V
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = {};
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: const EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              color: Colors.blue[400],
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[800],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    "PROMO",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Roti bakar Cimanggis",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "8.1 km",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    const Icon(
                                      Icons.circle,
                                      size: 4.0,
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange[400],
                                      size: 16.0,
                                    ),
                                    const Text(
                                      "4.8",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "Bakery & Cake . Breakfast . Snack",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "€24",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialExtensionView> createState() => TutorialExtensionController();
}
