import 'package:flutter/material.dart';

Widget UserImage(double profileHeight) {
  String pathImage = "images/maye.png";
  return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          shape: BoxShape.circle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 35.0,
              offset: Offset(0.0, 7.0),
            )
          ]),
      child: CircleAvatar(
        radius: profileHeight / 1.5,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage(pathImage),
      ));
}
