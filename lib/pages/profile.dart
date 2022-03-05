import 'package:civicapay_2022/components/text_test.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/providers/requests.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ProviderRequests _providerRequests = ProviderRequests();
  String name = '';

  @override
  void initState() {
    super.initState();
    _providerRequests.getUserName().then((String result) {
      setState(() {
        name = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => _providerRequests.getHttp(),
          child: const Text("Push this boton"),
        ),
        Text(name),
        TextTest(),
        TextTest(),
        TextTest(),
        TextTest(),
      ],
    );
  }
}
