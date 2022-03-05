import 'package:civicapay_2022/components/card_image.dart';
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
  int points = 0;
  int certificates = 13;

  @override
  void initState() {
    super.initState();
    _providerRequests.getUserName().then((String result) {
      setState(() {
        name = result;
      });
    });
    _providerRequests.getUserPoints().then((int result) {
      setState(() {
        points = result;
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.trophy,
                        color: Colors.amber,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "${points.toString()} CivicaPuntos",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        const Icon(
                          FontAwesomeIcons.certificate,
                          color: Colors.amber,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "${certificates.toString()} Certificados",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Expanded(
            child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
              color: Color(0xF2F2F2F2F2F2),
              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
          child: SizedBox(
            height: 350.0,
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                CardImage(
                    "images/social_activities.png", "Actividades Sociales"),
                CardImage("images/reedem_points.png", "Redime tus Puntos"),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
