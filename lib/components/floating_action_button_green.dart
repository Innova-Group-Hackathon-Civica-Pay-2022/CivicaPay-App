import 'package:civicapay_2022/pages/social_activities/social_activities.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  Widget pageToGo;
  FloatingActionButtonGreen(
      {this.pageToGo = const SocialActivities(), Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.pageToGo),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
