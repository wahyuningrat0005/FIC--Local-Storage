import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/tf_product_list_controller.dart';

// SQL vs NoSQL
// -----------
// READ DATA
// NoSQL WIN
//--------------
// WRITE DATA
// SQL WIN
// ----------
class TfProductListView extends StatefulWidget {
  const TfProductListView({Key? key}) : super(key: key);

  Widget build(context, TfProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfProductList"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("messages")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;
                      return Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("${item["message"]}"),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onSubmitted: (message) {
                      FirebaseFirestore.instance.collection("messages").add({
                        "message": message,
                      });
                    },
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.send),
                  label: const Text("Send"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () async {
                    // var snapshot = await FirebaseFirestore.instance
                    //     .collection("messages")
                    //     .get();
                    // for (var i = 0; i < snapshot.docs.length; i++) {
                    //   await FirebaseFirestore.instance
                    //       .collection("messages")
                    //       .doc(snapshot.docs[i].id)
                    //       .delete();
                    // }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TfProductListView> createState() => TfProductListController();
}
