import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class exotics extends StatefulWidget {
  const exotics({super.key});

  @override
  State<exotics> createState() => _exoticsState();
}

class _exoticsState extends State<exotics> {
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
  "images/lettuce.jpg",
  "images/button mushroom.jpg",
  "images/broccoli.jpg",
  "images/red radish.jpg",
  "images/lettuce red.jpg",
  "images/radish white.jpg",
  "images/leeks.jpg",
  "images/red cabbage.jpg",
];
List name = [
  "Lettuce Green",
  "Button Mushroom",
  "Broccoli",
  "Red Radish",
  "Lettuce Red",
  "Radish White",
  "Leeks",
  "Red Cabbage",
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
];
