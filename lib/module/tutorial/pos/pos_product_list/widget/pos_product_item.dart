import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosProductItem extends StatelessWidget {
  final Map item;
  const PosProductItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        bool confirm = false;
        await showDialog<void>(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Are you sure you want to delete this item?'),
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[600],
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("No"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    confirm = true;
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
              ],
            );
          },
        );

        if (confirm) {
          print("Confirmed!");
          ProductService.deleteProduct(item);
          PosProductListController.instance.update();
        }
      },
      child: Card(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
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
                  image: DecorationImage(
                    image: NetworkImage(
                      item["photo"] ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                    Text(
                      item["product_name"],
                      style: const TextStyle(
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
                    Text(
                      "€${item["price"]}",
                      style: const TextStyle(
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
      ),
    );
  }
}
