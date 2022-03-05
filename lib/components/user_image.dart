import 'package:flutter/material.dart';

Widget UserImage(double profileHeight) {
  String pathImage = "images/maye.png";
  return CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: AssetImage(pathImage),
  );
}
