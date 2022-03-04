import 'package:flutter/material.dart';
import 'package:civicapay_2022/components/text_test.dart';

class QRPayment extends StatefulWidget {
  @override
  State<QRPayment> createState() => _QRPaymentState();
}

class _QRPaymentState extends State<QRPayment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextTest(),
        TextTest(),
      ],
    );
  }
}
