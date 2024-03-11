import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class salads extends StatefulWidget {
  const salads({super.key});

  @override
  State<salads> createState() => _saladsState();
}

class _saladsState extends State<salads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 244, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(159, 1, 142, 5),
        leading: Icon(
          Icons.keyboard_arrow_left,
          size: 25,
        ),
        title: Text("Gourmet Salads "),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 50),
        child: Column(
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("images/no product.jpg")),
            Text(
              "Currently there are no products available in this",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text("category", style: TextStyle(color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
