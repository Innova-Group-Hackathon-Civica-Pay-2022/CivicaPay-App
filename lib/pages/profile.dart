import 'package:civicapay_2022/components/text_test.dart';
import 'package:civicapay_2022/components/user_cover.dart';
import 'package:civicapay_2022/components/user_image.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/providers/requests.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ProviderRequests _providerRequests = ProviderRequests();
  final double coverHeight = 280;
  final double profileHeight = 100;
  final double top = 80;
  String name = '';

  @override
  void initState() {
    super.initState();
    //   final top = coverHeight - profileHeight;
    _providerRequests.getUserName().then((String result) {
      setState(() {
        name = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            UserCover(coverHeight),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: UserImage(profileHeight),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 40,
              left: 20,
              child: Icon(
                FontAwesomeIcons.trophy,
                color: Colors.amber,
              ),
            )
          ],
        ),
        Expanded(
            child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(34))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _providerRequests.getHttp(),
                child: const Text("Push this boton"),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
