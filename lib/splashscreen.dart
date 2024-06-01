import 'dart:async';

import 'package:flutter/material.dart';
import 'package:third_eye/Login.dart';
import 'package:third_eye/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => login(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 62, 62),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              scale: 7,
            ),
            Text(
              "Third Eye",
              style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
