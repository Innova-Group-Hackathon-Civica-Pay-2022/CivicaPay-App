import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  String pathImage = "images/explore.png";
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pathImage),
        fit: BoxFit.cover,
      ),
    ));
  }
}
