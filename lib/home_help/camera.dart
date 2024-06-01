import 'package:flutter/material.dart';

class camera extends StatelessWidget {
  const camera({super.key});

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
          title: const Text("Capture all Moments"),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Color.fromARGB(255, 210, 5, 5),
              ),
              onPressed: null,
            ),
          ],
        ),
         body: Center(child: Image.asset('assets/images/city.png')),
      ),
    );
  }
}
