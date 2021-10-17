import 'dart:async';
import 'package:flutter/material.dart';

import 'features/Show_Quran_Pages/Presentation/Pages/HomePage.dart';

class SplachScreen extends StatefulWidget {
  static const String routeName = 'Splach Screen';
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Container(
        width: widthSize > 528 ? 500: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splachScreenImage.png"),
              fit: BoxFit.fill,
            ),
        ),
      ),
          )),
    );
  }
}
