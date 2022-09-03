import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:urban_home/constant/constant.dart';
import 'package:urban_home/pages/screens.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/iconss.png',
                width: 150.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 30.0,
              child: Container(
                width: width,
                child: SpinKitRing(
                  color: primaryColor,
                  size: 50.0,
                  lineWidth: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
