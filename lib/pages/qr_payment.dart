import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class QRPayment extends StatefulWidget {
  @override
  State<QRPayment> createState() => _QRPaymentState();
}

class _QRPaymentState extends State<QRPayment> {
  String pathImage = "images/qrcode.png";
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pathImage),
        fit: BoxFit.cover,
      ),
    ));
  }
}
