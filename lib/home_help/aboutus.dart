import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
  const aboutus({super.key});

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
          title: const Text("ABOUT US"),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.person_4_rounded,
                color: Color.fromARGB(255, 210, 5, 5),
              ),
              onPressed: null,
            ),
          ],
        ),
        // body: Center(child: Image.asset('assets/images/aa.png')),
      ),
    );
  }
}
