import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class veg extends StatefulWidget {
  const veg({super.key});

  @override
  State<veg> createState() => _vegState();
}

class _vegState extends State<veg> {
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
        title: Text("Vegetables"),
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
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              shrinkWrap: true,
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
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

List offerprice = [
  "₹55",
  "₹37",
  "₹33",
  "₹96",
  "₹36",
  "₹10",
  "₹55",
  "₹37",
  "₹17",
  "₹49"
];
List normalprice = [
  "  ",
  "₹60",
  "₹48",
  "₹97",
  "₹39",
  "₹22",
  "₹75",
  "₹49",
  "₹37",
  "₹53"
];
List name = [
  "Tapioca",
  "Cherry Tomato",
  "Chinese Potato",
  "Garlic",
  "Salad Cucumber",
  "Green Chilly",
  "Cauliflower",
  "Capsicum-Green",
  "Brinjal Purple ",
  "Beetroot Ooty"
];

final List hi = [
  "images/tapioca.jpg",
  "images/tomato.jpg",
  "images/potato.jpg",
  "images/garlic.jpg",
  "images/cucumber.jpg",
  "images/chilly.jpg",
  "images/cauliflower.jpg",
  "images/capsicum.jpg",
  "images/brinjal.jpg",
  "images/betroot.jpg"
];
