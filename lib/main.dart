import 'package:dogglers_app/screens/grid_screen.dart';
import 'package:dogglers_app/screens/home_screen.dart';

import 'package:dogglers_app/screens/vertical_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: VerticalPage.id,
      routes: {
        "/": (context) => const MyHome(),
        VerticalPage.id: (context) => const VerticalPage(),
        GridPage.id: (context) => const GridPage()
      },
    );
  }
}
