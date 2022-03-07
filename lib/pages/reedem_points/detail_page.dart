import 'package:civicapay_2022/Models/User.dart';
import 'package:civicapay_2022/providers/db.dart';
import 'package:civicapay_2022/styles/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<User> users = [];

  final int product_cost = 10;
  loadUserData() async {
    List<User> auxUser = await DB.users();
    setState(() {
      users = auxUser;
    });
  }

  reedemPoints() {
    users[0].civiPoints -= product_cost;
    DB.update(users[0]);
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 30),
        child: ListView(
          children: [
            SafeArea(
                child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 268,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/todo_en_artes.jpg')),
                        color: bulao2,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, right: 30, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          //child: Image.asset('images/Back_Button.png')),
                          child: const Icon(Icons.arrow_back_ios,
                              color: Colors.white)),
                      //                     Image.asset('images/Save_Button.png'),
                      const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                // Container(
                //     margin: const EdgeInsets.only(top: 93),
                //     child: Image.asset('images/mobil4.png'))
              ],
            )),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Descuento Todo en Artes\n10% off',
              style: blackTektFont1.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 13),
              height: 50,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(
                  color: bulao,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Costo (Civi Puntos)',
                    style:
                        blackTektFont1.copyWith(fontSize: 18, color: greyColor),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Text(
                        product_cost.toString(),
                        style: blackTektFont1.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Características',
                style: blackTektFont1.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600)),
            Container(
              margin: const EdgeInsets.only(top: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: bulao2,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        //child: Image.asset('images/Lock.png'),
                        child: const Icon(Icons.date_range),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Válido hasta',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            '31/12/2022',
                            style: blackTektFont1.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: bulao2,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: const Icon(Icons.location_pin),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ubicación',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            'Premium Plaza',
                            style: blackTektFont1.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: bulao2,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: const Icon(Icons.shop),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aplica Para:',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            'Todo producto',
                            style: blackTektFont1.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text('Mas información',
                  style: blackTektFont1.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Text(
                'Gran selección de materiales de arte: lienzo, pintura, pinceles y material para dibujar. Las mejores marcas, ahorros confiables y un servicio al cliente increíble.',
                style: blackTektFont1.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400)),
            GestureDetector(
              onTap: () {
                reedemPoints();

                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20, right: 30),
                height: 55,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: Text(
                  'Redimir',
                  style: blackTektFont1.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
