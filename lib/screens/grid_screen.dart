import 'package:dogglers_app/constants.dart';
import 'package:dogglers_app/models/dogs.dart';
import 'package:dogglers_app/widget.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);
  static String id = "/grid_page";

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple,
        title: const Text("DOGGLERS"),
      ),
      body: Center(
        child: GridView.builder(
          // scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.645,
          ),
          itemCount: myDogs.length,
          itemBuilder: (context, index) {
            return MyCard(index: index);
          },
        ),
      ),
    );
  }
}
