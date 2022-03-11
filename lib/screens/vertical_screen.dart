import 'package:dogglers_app/constants.dart';
import 'package:dogglers_app/models/dogs.dart';
import 'package:dogglers_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class VerticalPage extends StatelessWidget {
  const VerticalPage({Key? key}) : super(key: key);
  static String id = "/vertical_page";

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple,
        title: const Text("DOGGLERS"),
      ),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: myDogs.length,
        itemBuilder: (context, index) {
          return MyCard(index: index);
        },
      ),
    );
  }
}
