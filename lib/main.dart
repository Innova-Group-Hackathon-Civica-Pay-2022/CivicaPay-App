import 'package:civicapay_2022/pages/home.dart';
import 'package:civicapay_2022/pages/profile.dart';
import 'package:civicapay_2022/pages/qr_payment.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:civicapay_2022/pages/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CivicaPay',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: 'Hackathon CivicaPay 2022'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _pageIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final Home _homePage = Home();
  final QRPayment _qrPaymentPage = QRPayment();
  final Explore _explorePage = Explore();
  final Profile _profilePage = Profile();
  Widget _showPage = Home();

  _pageChooser(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return _homePage;
      case 1:
        return _qrPaymentPage;
      case 2:
        return _explorePage;
      case 3:
        return _profilePage;
      default:
        return _homePage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 350),
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
          index: _pageIndex,
          items: const <Widget>[
            Icon(
              Icons.house_rounded,
              size: 30,
              color: Colors.green,
            ),
            Icon(
              Icons.qr_code_2_rounded,
              size: 30,
              color: Colors.green,
            ),
            Icon(
              Icons.explore_rounded,
              size: 30,
              color: Colors.green,
            ),
            Icon(
              Icons.contacts_rounded,
              size: 30,
              color: Colors.green,
            ),
          ],
          onTap: (index) {
            setState(() {
              _showPage = _pageChooser(index);
            });
          },
        ),
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Container(
            color: Colors.green,
            child: Center(
              child: _showPage,
            ),
          ),
        ));
  }
}
