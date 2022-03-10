import 'package:dogglers_app/screens/grid_screen.dart';
import 'package:dogglers_app/screens/vertical_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  static String id = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DOGGLERS APP"),
        backgroundColor: purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(purple),
                ),
                onPressed: () {
                  moveToPage(context, VerticalPage.id);
                },
                child: const Text(
                  "VERTICAL",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(purple),
                ),
                onPressed: () {
                  moveToPage(context, GridPage.id);
                },
                child: const Text(
                  "GRID",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void moveToPage(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
