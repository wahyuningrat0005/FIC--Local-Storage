import 'package:flutter/material.dart';
import 'package:example/core.dart';

class OvoDashboardView extends StatefulWidget {
  const OvoDashboardView({Key? key}) : super(key: key);

  Widget build(context, OvoDashboardController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9FA),
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.purple[900],
          ),
          iconTheme: IconThemeData(
            color: Colors.purple[900],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            "OVO",
            style: GoogleFonts.rubik(
              fontSize: 20.0,
            ),
          ),
          leading: Container(),
          leadingWidth: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.discount,
                  color: Colors.purple[900],
                  size: 16.0,
                ),
                label: Text(
                  "Promo",
                  style: TextStyle(
                    color: Colors.purple[900],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  // color: Colors.purple[900],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.shutterstock.com/image-vector/dark-purple-polygonal-illustration-which-260nw-410007337.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "OVO Cash",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Total Saldo",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Rp 10.000.000",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.wallet_membership,
                            color: Colors.purple[900],
                            size: 16.0,
                          ),
                          label: Text(
                            "1.500 Points",
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontSize: 12.0,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.purple,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                "Top up",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.swap_horiz,
                                  color: Colors.purple,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                "Transfer",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.money,
                                  color: Colors.purple,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                "Tarik Tunai",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.history_edu,
                                  color: Colors.purple,
                                  size: 20.0,
                                ),
                              ),
                              Text(
                                "History",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Pilihan",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            elevation: 0.0,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Tagihan",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            elevation: 0.0,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Asuransi",
                            style: TextStyle(
                              color: Colors.purple[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    LayoutBuilder(
                      builder: (context, constraint) {
                        List menus = [
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/5178/5178561.png",
                            "label": "Top up",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/2980/2980479.png",
                            "label": "Paket data",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/4514/4514764.png",
                            "label": "Listrik",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/2991/2991114.png",
                            "label": "Pajak PBB",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/550/550486.png",
                            "label": "TV Kabel",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/834/834768.png",
                            "label": "Asuransi",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/5501/5501360.png",
                            "label": "Invest",
                            "onTap": () {},
                          },
                          {
                            "icon":
                                "https://cdn-icons-png.flaticon.com/128/791/791979.png",
                            "label": "Discount",
                            "onTap": () {},
                          },
                        ];

                        return Wrap(
                          children: List.generate(
                            menus.length,
                            (index) {
                              var item = menus[index];

                              var size = constraint.biggest.width / 4;

                              return SizedBox(
                                width: size,
                                height: size,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.blueGrey,
                                    animationDuration:
                                        const Duration(milliseconds: 1000),
                                    backgroundColor: Colors.transparent,
                                    splashFactory: InkSplash.splashFactory,
                                    shadowColor: Colors.transparent,
                                    elevation: 0.0,
                                  ),
                                  onPressed: () => item["onTap"](),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        item["icon"],
                                        width: 30.0,
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      Text(
                                        "${item["label"]}",
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.blueGrey[900],
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //ALT + SHIFT + H
                    SizedBox(
                      height: 100.0,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width * 0.6,
                            margin: const EdgeInsets.only(
                              right: 12.0,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.ibb.co/3pPYd14/freeban.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple[900],
          unselectedItemColor: Colors.grey[600],
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.money,
              ),
              label: "Finance",
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.purple[900],
                  child: Text(
                    "QRIS",
                    style: GoogleFonts.coveredByYourGrace(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              label: "Add",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "Inbox",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<OvoDashboardView> createState() => OvoDashboardController();
}
