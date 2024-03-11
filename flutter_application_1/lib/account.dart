import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(width: 500, child: Image.asset("images/Account.jpg")),
          Padding(
            padding: const EdgeInsets.only(right: 130, top: 20),
            child: Text(
              "Log in / Sign up",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 89, 88, 88)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 145, top: 20),
            child: Text(
              "Enter your mobile number",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: SizedBox(
              height: 40,
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 9, 107, 107)),
                    child: Text("Continue"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 170),
            child: Text(
              "Login with password",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: SizedBox(
                width: 280,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Color.fromARGB(255, 9, 107, 107)),
                    ))),
          ),
        ],
      ),
    );
  }
}
