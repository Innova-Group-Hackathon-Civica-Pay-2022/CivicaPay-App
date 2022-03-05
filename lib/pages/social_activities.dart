// ignore_for_file: prefer_const_constructors

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
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Actividades disponibles",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
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
                      width: 150.0,
                      child: Center(child: Text("Buscar")),
                      decoration: BoxDecoration(color: Color(0xEDF0F5EDF0F5)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
