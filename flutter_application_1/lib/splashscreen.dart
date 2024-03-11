import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstpage.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => mainpage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 208, 128),
      body: Center(
          child:
              Image.asset("images/IMG_20240112_151906-removebg-preview.png")),
    );
  }
}
