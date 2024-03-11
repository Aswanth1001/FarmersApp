import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(159, 1, 142, 5),
          leading: Icon(
            Icons.keyboard_arrow_left,
            size: 35,
          ),
          title: Text(
            "My Cart | Items 8",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: ListView.builder(
          itemCount: image.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Column(
              children: [
                Container(
                  height: 80,
                  width: 450,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset(
                        image[index],
                        height: 70,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            name[index],
                          ),
                          Text(quantity[index])
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ));
          },
        ));
  }
}

final List image = [
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM.jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM (2).jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.02 PM (1).jpeg",
  "images/WhatsApp Image 2024-01-22 at 5.15.01 PM.jpeg",
];
List name = [
  "Carrot(450g-550g)\n1NOS",
  "Beans Haricot(275g-325g)\n1NOS",
  "Pumpkin(450gm-550gm)\n1NOS",
  "Vellari(450gm-550gm)\n1NOS",
];
List quantity = [
  "₹37",
  "₹35",
  "₹16",
  "₹25",
];
