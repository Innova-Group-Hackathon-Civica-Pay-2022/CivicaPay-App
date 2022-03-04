import 'package:civicapay_2022/components/text_test.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextTest(),
        TextTest(),
        TextTest(),
        TextTest(),
      ],
    );
  }
}
