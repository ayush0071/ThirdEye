import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({super.key});

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
          title: const Text("This is My Details"),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 5, 5, 5),
              ),
              onPressed: null,
            ),
          ],
        ),
        // body: Center(child: Image.asset('assets/images/abc.png')),
      ),
    );
  }
}
