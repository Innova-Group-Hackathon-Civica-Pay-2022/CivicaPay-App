import 'package:flutter/material.dart';

class SocialActivities extends StatefulWidget {
  SocialActivities({Key? key}) : super(key: key);

  @override
  State<SocialActivities> createState() => _SocialActivitiesState();
}

class _SocialActivitiesState extends State<SocialActivities> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
