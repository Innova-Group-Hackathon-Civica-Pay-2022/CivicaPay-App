import 'package:civicapay_2022/Models/User.dart';
import 'package:civicapay_2022/providers/db.dart';
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
    return GestureDetector(
      onTap: () {
        DB.insert(User(
          id: 1075,
          name: "Maria Parra",
          civiPoints: 12,
          certifications: 1,
        ));
      },
      child: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
