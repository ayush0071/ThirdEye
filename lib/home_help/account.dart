import 'dart:io';

import 'package:flutter/material.dart';
import 'package:third_eye/top_titles/home.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.pop(context, false),
          ),
          centerTitle: true,
          elevation: 0,
          title: const Text("Welcome To My Account"),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.account_balance,
                color: Color.fromARGB(255, 210, 5, 5),
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
