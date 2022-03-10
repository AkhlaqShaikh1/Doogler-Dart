import 'package:flutter/material.dart';

import 'constants.dart';
import 'models/dogs.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.index,
    // required this.size,
  }) : super(key: key);
  final int index;
  // final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // margin: const EdgeInsets.all(kDefaultPadding),
            height: 184,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                myDogs[index].imgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
              margin: const EdgeInsets.only(left: kDefaultPadding),
              child: Text(myDogs[index].name,
                  style: myStyle.copyWith(fontSize: 20))),
          const SizedBox(height: kDefaultPadding + 10),
          Container(
              margin: const EdgeInsets.only(
                  left: kDefaultPadding, bottom: kDefaultPadding),
              child: Text("Age: ${myDogs[index].age}", style: myStyle)),
          // const Spacer(),
          Container(
              margin: const EdgeInsets.only(
                right: kDefaultPadding,
                bottom: kDefaultPadding,
                left: kDefaultPadding,
              ),
              child: Expanded(
                child: Text("Age: ${myDogs[index].hobbies}", style: myStyle),
              )),
        ],
      ),
    );
  }
}
