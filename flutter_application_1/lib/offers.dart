import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class offer extends StatefulWidget {
  const offer({super.key});

  @override
  State<offer> createState() => _offerState();
}

class _offerState extends State<offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 218, 218),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(159, 1, 142, 5),
        leading: Icon(
          Icons.keyboard_arrow_left,
          size: 25,
        ),
        title: Text("Offers"),
        actions: [
          Icon(
            Icons.search,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
             onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cart(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_cart,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                hi.length,
                (index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 1.0,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-1.0, -1.0),
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          hi[index],
                          height: 80,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          name[index],
                          // style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                offerprice[index],
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                normalprice[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text("1.00 NOS")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cart(),
                                  ));
                            },
                            child: Container(
                              height: 25,
                              width: 70,
                              color: Color.fromARGB(159, 1, 142, 5),
                              child: Center(
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 360,
              color: Colors.red,
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cart(),
                          ));
                    },
                    child: Text("View Cart"),
                    style: ElevatedButton.styleFrom(primary: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List hi = [
  "images/WhatsApp Image 2024-01-22 at 5.54.52 PM.jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM.jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM (2).jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM (1).jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.01 PM.jpeg",
  "images/mockup-graphics-bC1fXU1v98U-unsplash.jpg",
  "images/mockup-graphics-1G7PGolEJUk-unsplash.jpg",
  "images/engin-akyurt-iLHCV4ZBH7s-unsplash.jpg",
  "images/WhatsApp Image 2024-01-22 at 5.54.52 PM (1).jpeg",
];
List name = [
  "Chinese Cabbage",
  "Carrot(450g-550g)",
  "Beans Haricot(275g-325g)",
  "Pumpkin(450gm-550gm)",
  "Vellari(450gm-550gm)",
  "Big Onion(950gm-1050gm)",
  "Sweet Corn",
  "Apple Red (450gm-550gm)",
  "Coriander Leaves 100g",
];
List offerprice = [
  "₹72.5",
  "₹37",
  "₹35",
  "₹16",
  "₹25",
  "₹56",
  "₹40",
  "₹219",
  "₹17",
];
List normalprice = [
  "₹76",
  "₹60",
  "₹58",
  "₹23",
  "₹30",
  "₹76",
  "₹44",
  "₹285",
  "₹37",
];
