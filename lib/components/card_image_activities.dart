import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/images/beach.jpeg";

  String cardText = "Stuff";

  CardImage(this.pathImage, this.cardText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 150.0,
      width: 250.0,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            card,
             Text(
              cardText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const FloatingActionButtonGreen()
      ],
    );
  }
}
