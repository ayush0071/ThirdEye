import 'package:flutter/material.dart';
import 'package:third_eye/home_help/aboutus.dart';
import 'package:third_eye/home_help/account.dart';
import 'package:third_eye/home_help/camera.dart';
import 'package:third_eye/home_help/contact.dart';
import 'package:third_eye/home_help/map.dart';
import 'package:third_eye/home_help/settings.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Example'),
        ),
        drawer: MyDrawer(),
        body: Center(child: Text('Main Screen')),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Container(
              color: Colors.red, // Added red background color to the container
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'User Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.map, color: Colors.white),
            title: Text('Map',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => map()));
            },
          ),
          ListTile(
            leading: Icon(Icons.camera, color: Colors.white),
            title: Text('Camera',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => camera()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail, color: Colors.white),
            title: Text('Contact',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => contact()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text('About us',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aboutus()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => settings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.white),
            title: Text('Account',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => account()));
            },
          ),
          Spacer(),
          ListTile(
            title: Text('Back',
                style: TextStyle(
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
