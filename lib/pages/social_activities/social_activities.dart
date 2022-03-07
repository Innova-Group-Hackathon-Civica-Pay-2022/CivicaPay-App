import 'package:civicapay_2022/components/floating_action_button_green.dart';
import 'package:civicapay_2022/providers/requests.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/styles/theme.dart';
import 'package:civicapay_2022/pages/social_activities/detail_page.dart';
import 'package:civicapay_2022/pages/social_activities/custom_tabbar.dart';

class SocialActivities extends StatefulWidget {
  const SocialActivities({Key? key}) : super(key: key);

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
        title: 'Social Activities',
        home: Scaffold(
          backgroundColor: greyColor2,
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 31, top: 30, bottom: 30),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Encuentra",
                            style: blackTektFont1.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text("Actividades Sociales",
                              style: blackTektFont1.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: greenColor)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 13, left: 17, bottom: 13),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 119,
                            decoration: BoxDecoration(
                                color: greyColor2,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8))),
                            child: Row(
                              children: [
                                Image.asset('images/cari.png'),
                                const SizedBox(width: 9),
                                Text(
                                  'Buscar',
                                  style: blackTektFont1.copyWith(
                                      fontSize: 14, color: greyColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 21,
                          ),
                          Container(
                            height: 50,
                            width: 53,
                            decoration: BoxDecoration(
                                color: greenColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                image: const DecorationImage(
                                    image: AssetImage('images/Vector.png'))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 31, top: 15),
                child: CustomTabbar(const [
                  'Todo',
                  'Enseñanza',
                  'Recolección',
                  'Acompañamientos',
                  'Miscelánea'
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(left: 31, bottom: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Popular',
                      style: greenTektFont1.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lo más popular',
                      style: blackTektFont1.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPage()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 18, right: 42),
                  height: 200,
                  width: MediaQuery.of(context).size.width - 60,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/teaching_english.jpg')),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: greyColor),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 16, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Clases de Inglés',
                              style: whiteTektFont1.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Biblioteca La Paloma',
                              style: whiteTektFont1.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: const FloatingActionButtonGreen(),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 31, bottom: 5, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'De acuerdo a tu perfíl',
                      style: greenTektFont1.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Realiza experiencias en base a tu perfíl',
                      style: blackTektFont1.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 18, right: 42, top: 15),
                padding: const EdgeInsets.all(13),
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: greyColor,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/ludoteca_acompanar.jpg')),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image.asset('images/ludoteca_acompanar.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Acompañamiento en Ludoteca',
                          style: whiteTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Guardería Manitas',
                          style: whiteTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 18, right: 42, top: 15),
                padding: const EdgeInsets.all(13),
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: greyColor,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/programming_classes.jpg')),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image.asset('images/ludoteca_acompanar.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Programación para principiantes',
                          style: whiteTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'BiblioLabs',
                          style: whiteTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 18, right: 42, top: 15),
                padding: const EdgeInsets.all(13),
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: greyColor,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/recycling.jpg')),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Image.asset('images/ludoteca_acompanar.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Reciclado Ecológico',
                          style: whiteTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Súper Ecolocos',
                          style: whiteTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}
