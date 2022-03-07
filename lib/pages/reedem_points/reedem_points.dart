import 'package:civicapay_2022/Models/User.dart';
import 'package:civicapay_2022/components/floating_action_button_green.dart';
import 'package:civicapay_2022/providers/db.dart';
import 'package:civicapay_2022/providers/requests.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/styles/theme.dart';
import 'package:civicapay_2022/pages/reedem_points/detail_page.dart';
import 'package:civicapay_2022/pages/reedem_points/custom_tabbar.dart';

class ReedemPoints extends StatefulWidget {
  const ReedemPoints({Key? key}) : super(key: key);

  @override
  State<ReedemPoints> createState() => _ReedemPointsState();
}

class _ReedemPointsState extends State<ReedemPoints> {
  final ProviderRequests _providerRequests = ProviderRequests();
  final double coverHeight = 280;
  final double profileHeight = 100;
  final double top = 80;

  List<User> users = [];

  loadUserData() async {
    List<User> auxUser = await DB.users();
    setState(() {
      users = auxUser;
    });
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reedem Points',
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
                            "Redime tus",
                            style: blackTektFont1.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text("CiviPuntos",
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                child: Card(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.green.shade900,
                          Colors.green.shade400,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, bottom: 20, left: 50),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tus Puntos Cívica",
                              style: whiteTektFont1.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              DateTime.now().toString().split(" ")[0],
                              style: whiteTektFont1.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              users[0].civiPoints.toString(),
                              style: whiteTektFont1.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ]),
                    ), //declare your widget here
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 31, top: 15),
                child: CustomTabbar(const [
                  'Todo',
                  'Educación',
                  'Alimentos',
                  'Transporte',
                  'Museos'
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
                          image: AssetImage('images/todo_en_artes.jpg')),
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
                              'Descuento Todo en Artes',
                              style: whiteTektFont1.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Bono de 10% de descuento',
                              style: whiteTektFont1.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButtonGreen(
                          pageToGo: DetailPage(),
                        ),
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
                      'Últimos items',
                      style: greenTektFont1.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Estos son los últimos items añadidos',
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
                      image: AssetImage('images/metro_medellin.jpg')),
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
                          'Viajes gratis Metro',
                          style: whiteTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '24 horas de viajes\ngratis',
                          style: whiteTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(
                        pageToGo: DetailPage(),
                      ),
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
                      image: AssetImage('images/cine_colombia.jpg')),
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
                          'Descuento Cine Colombia',
                          style: whiteTektFont1.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '35% de Descuento en compras de\nCine Colombia',
                          style: whiteTektFont1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(
                        pageToGo: DetailPage(),
                      ),
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonGreen(
                        pageToGo: DetailPage(),
                      ),
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
