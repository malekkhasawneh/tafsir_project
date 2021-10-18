import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tafsir_project/SplachScreen.dart';
import 'package:tafsir_project/features/Show_Quran_Pages/Presentation/Pages/HomePage.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SplachScreen.routeName: (context) => SplachScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Great Tafsir',
      home: HomePage(),
    );
  }
}
