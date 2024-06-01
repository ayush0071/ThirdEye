import 'package:flutter/material.dart';
import 'package:third_eye/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Third Eye',
      home: SplashScreen(),
    );
  }
}
