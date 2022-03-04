import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextTest(),
        TextTest(),
        TextTest(),
      ],
    );
  }
}
