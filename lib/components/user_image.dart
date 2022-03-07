import 'package:civicapay_2022/Models/User.dart';
import 'package:civicapay_2022/providers/db.dart';
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
      child: GestureDetector(
        onTap: () {
          DB.insert(User(
            id: 1075,
            name: "Maria Parra",
            civiPoints: 13,
            certifications: 3,
          ));
        },
        child: CircleAvatar(
          radius: profileHeight / 1.5,
          backgroundColor: Colors.grey.shade800,
          backgroundImage: AssetImage(pathImage),
        ),
      ));
}
