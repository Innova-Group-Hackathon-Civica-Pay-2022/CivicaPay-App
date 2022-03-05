import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String pathImage = "images/civica_logo.png";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0,),
          child: Image(image: AssetImage(pathImage)),
        ),
        TextTest(),
      ],
    );
  }
}
