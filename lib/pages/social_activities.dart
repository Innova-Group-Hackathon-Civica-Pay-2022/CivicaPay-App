// ignore_for_file: prefer_const_constructors

import 'package:civicapay_2022/components/card_image_activities.dart';
import 'package:civicapay_2022/providers/requests.dart';
import 'package:flutter/material.dart';

class SocialActivities extends StatefulWidget {
  SocialActivities({Key? key}) : super(key: key);

  @override
  State<SocialActivities> createState() => _SocialActivitiesState();
}

class _SocialActivitiesState extends State<SocialActivities> {
  final ProviderRequests _providerRequests = ProviderRequests();
  final double coverHeight = 280;
  final double profileHeight = 100;
  final double top = 80;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Activities',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.green,
                  ),
                  Text(
                    "Actividades disponibles",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 300.0,
                      height: 35.0,
                      child: Center(child: Text("Buscar")),
                      decoration: BoxDecoration(
                          color: Color(0xEDF0F5EDF0F5),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Lo más popular",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200.0,
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardImage("images/teach_english.png", "Enseña"),
                    CardImage("images/teach_basic_programming.png",
                        "Enseña programación"),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "De acuerdo a tu perfíl",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Realiza experiencias de acuerdo a tu perfíl",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200.0,
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardImage(
                        "images/ludoteca.png", "Acompañamiento de Ludoteca"),
                    CardImage(
                        "images/recoleccion.png", "Recolección ecológica"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
