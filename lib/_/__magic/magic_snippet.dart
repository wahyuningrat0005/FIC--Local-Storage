import 'package:flutter/material.dart';

import '../cursor.dart';

//#GROUP_TEMPLATE magic_snippet
class MagicSnippetView extends StatelessWidget {
  const MagicSnippetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    //#TEMPLATE func
    void CURSOR_1() {
      CURSOR_2
    }
    //#END

    //#TEMPLATE cop
    controller.update();
    //#END

    //#TEMPLATE cos
    controller.setState((){});
    //#END

    //#TEMPLATE sst
    setState((){});
    //#END

    //#TEMPLATE afunc
    Future CURSOR_1() async {
      CURSOR_2
    }
    //#END

    //#TEMPLATE for
    for(var i=0; i< items.length ;i++){
      var item = items[i];
      CURSOR_1
    }
    //#END
    */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
          //#TEMPLATE ctt
          Column(
            children: [
              const Text("Your Text"),
              const Text("Your Text"),
              CURSOR_1
            ],
          ),
          //#END
          //#TEMPLATE rtt
          Row(
            children: [
              const Text("Your Text"),
              const Text("Your Text"),
              CURSOR_1
            ],
          ),
          //#END
          //#TEMPLATE capc
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [CURSOR_1],
              ),
            ),
          ),
          //#END
          //#TEMPLATE capr
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [CURSOR_1],
              ),
            ),
          ),
          //#END
          //#TEMPLATE caprtt
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("Your Text"),
                  const Text("Your Text"),
                  CURSOR_1,
                ],
              ),
            ),
          ),
          //#END
        ],
      ),
    );
  }
}
