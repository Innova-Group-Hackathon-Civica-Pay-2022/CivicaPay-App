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
          backgroundColor: bulao,
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 31, top: 30, bottom: 58),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Text(
                            "Encuentra",
                            style: blackTektFont1.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
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
                margin: const EdgeInsets.only(left: 31),
                child: CustomTabbar(
                    const ['Todo', 'Enseñanza', 'Recolección', 'Acompañamientos', 'Miscelánea']),
              ),
              Container(
                margin: const EdgeInsets.only(left: 31, bottom: 21, top: 20),
                child: Text(
                  'Popular Vehicles',
                  style: blackTektFont1.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600),
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
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: bulao2),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 16, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mazda 6 Turbocharged',
                              style: blackTektFont1.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '2020 Sport Ca',
                              style: blackTektFont1.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('images/mobil1.png'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 42, top: 20),
                padding: EdgeInsets.all(13),
                height: 82,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: bulao2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Corolla Specs',
                          style: blackTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Toyota',
                          style: blackTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Image.asset('images/mobil2.png')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 42, top: 20),
                padding: EdgeInsets.all(13),
                height: 82,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: bulao2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kia Australia',
                          style: blackTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Cerrato',
                          style: blackTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Image.asset('images/mobil3.png')
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}
