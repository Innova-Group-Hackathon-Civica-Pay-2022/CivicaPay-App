import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String pathImage = "images/home.png";
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
