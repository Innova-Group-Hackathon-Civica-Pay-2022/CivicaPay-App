import 'package:civicapay_2022/styles/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30),
        child: ListView(
          children: [
            SafeArea(
                child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 268,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: bulao2,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('images/Back_Button.png')),
                      Image.asset('images/Save_Button.png'),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 93),
                    child: Image.asset('images/mobil4.png'))
              ],
            )),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Clases de Inglés \nBiblioteca La Paloma',
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
                    'Puntos dados',
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
                        '12',
                        style: blackTektFont1.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
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
                        child: const Icon(Icons.sunny),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Security',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            'Smart Lock',
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
                        child: Image.asset('images/speedometer.png'),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Speed',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            '194 km/h',
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
              margin: EdgeInsets.only(top: 10, right: 30),
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
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Image.asset('images/engine.png'),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Engine',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            '2,5L 4-Silinder',
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
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Image.asset('images/kursi.png'),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seats',
                            style: blackTektFont1.copyWith(fontSize: 12),
                          ),
                          Text(
                            '4 People',
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
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: Text('Select Color',
                  style: blackTektFont1.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: greenColor),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 47, right: 30),
              height: 55,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                  child: Text(
                'Book Now',
                style:
                    blackTektFont1.copyWith(fontSize: 16, color: Colors.white),
              )),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
