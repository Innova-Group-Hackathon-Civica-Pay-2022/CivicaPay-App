import 'package:flutter/material.dart';

Widget UserImage(double profileHeight) {
  String pathImage = "images/maye.png";
  return CircleAvatar(
    radius: profileHeight / 1.5,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: AssetImage(pathImage),
  );
}
