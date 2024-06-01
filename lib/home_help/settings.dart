import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: const Text("Third Eye"),
            actions: [
              BackButton(
                onPressed: () => Navigator.pop(context, false),
              ),
              // IconButton(
              //   icon: Icon(
              //     Icons.search,
              //     color: Color.fromARGB(255, 210, 5, 5),
              //   ),
              //   onPressed: null,
              // ),
            ],
          ),
          drawer: Drawer(
              backgroundColor: Colors.redAccent,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Third Eye"),
                    accountEmail: Text("thirdeye@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        "TE",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
