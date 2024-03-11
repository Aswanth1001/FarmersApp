import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/exotics.dart';
import 'package:flutter_application_1/freshcuts.dart';
import 'package:flutter_application_1/fruits.dart';
import 'package:flutter_application_1/nutrion.dart';
import 'package:flutter_application_1/offers.dart';
import 'package:flutter_application_1/packedflavours.dart';
import 'package:flutter_application_1/salads.dart';
// import 'package:flutter_application_1/splashscreen.dart';
import 'package:flutter_application_1/vegetables.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

int firstindex = 0;
int secondindex = 1;
int thirdindex = 2;
int fourthindex = 3;
int fifthindex = 4;
int sixthindex = 5;
int seventhindex = 6;
int eightindex = 7;

class _mainpageState extends State<mainpage> {
  List pages = [
    cart(),
    account(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: 360,
                  color: Color.fromARGB(159, 1, 142, 5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 40),
                  child: Row(
                    children: [
                      Text(
                        "FARMERS FRESH ZONE",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Icon(
                        Icons.place,
                        color: Colors.white,
                      ),
                      Text(
                        "Kochi",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 70),
                  child: SizedBox(
                    height: 50,
                    width: 340,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search for vegetables and fruits...",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => offer(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Offers",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => veg(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Vegetables",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => fruit(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Fruits",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => exotics(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Exotics",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => freshcuts(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Fresh Cuts",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => nutrion(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Nutrion Charges",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => packedflavours(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Packed Flavors",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => salads(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 243),
                            border: Border.all(
                                color: const Color.fromARGB(255, 157, 211, 96)),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                            child: Text(
                          "Gourmet Salads",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 129, 13)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 207, 225, 188)),
                  image: DecorationImage(
                      image: AssetImage(
                          "images/Screenshot_2024-01-17-20-16-34-82_eaf996180306234a79d0559280ca5606.jpg"))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210, top: 10),
              child: Text(
                "Shop By Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                one.length,
                (index) {
                  return SizedBox(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => three[index]));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 205, 205, 205),
                                      offset: Offset(3.0, 3.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0,
                                    ),
                                    const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-.0, -3.0),
                                      blurRadius: 10,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(one[index]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 130, left: 10),
                            child: Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                two[index],
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              height: 3,
              thickness: 7,
              color: Color.fromARGB(255, 234, 232, 232),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 170,
              width: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "images/Screenshot_2024-01-21-21-41-40-00_eaf996180306234a79d0559280ca5606.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              height: 3,
              thickness: 7,
              color: Color.fromARGB(255, 234, 232, 232),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 20,
            ),
            BottomNavigationBar(
              selectedFontSize: 15,
              unselectedFontSize: 10,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: currentIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cart(),
                            ));
                      },
                      child: Icon(Icons.shopping_cart)),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => account(),
                            ));
                      },
                      child: Icon(Icons.person)),
                  label: 'Account',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final List one = [
  "images/Screenshot_2024-01-19-15-53-50-07_eaf996180306234a79d0559280ca5606.jpg",
  "images/rodion-kutsaiev-EPwuZxdketc-unsplash.jpg",
  "images/rodion-kutsaiev-EX9XiF7ccsg-unsplash.jpg",
  "images/disiana-caballero-YRZSZYN2yaU-unsplash.jpg",
  "images/emma-frances-logan--_s3an-M76c-unsplash.jpg",
  "images/nutrion.jpg",
  "images/nancy-hughes-6FulpMThQ00-unsplash.jpg",
  "images/nadine-primeau-Juvw-a-RvvI-unsplash.jpg",
];
List two = [
  "Offer",
  "Vegetables",
  "Fruits",
  "Exotics",
  "Fresh Cuts",
  "Nutrion Chargers",
  "Packed Flavours",
  "Gourment Salads"
];
List three = [
  offer(),
  veg(),
  fruit(),
  exotics(),
  freshcuts(),
  nutrion(),
  packedflavours(),
  salads()
];
