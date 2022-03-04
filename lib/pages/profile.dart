import 'package:civicapay_2022/components/text_test.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/providers/requests.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ProviderRequests providerRequests = ProviderRequests();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: await providerRequests.getHttp(),
          child: const Text("Push this boton"),
        ),
        TextTest(),
        TextTest(),
        TextTest(),
        TextTest(),
      ],
    );
  }
}
