import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void main() {
  runApp(map());
}

class map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectLocationScreen(),
    );
  }
}

class SelectLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.person),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Text(
                'Map would be here',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Location',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Your Location',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildLocationButton('Home', Icons.home),
                      _buildLocationButton('Office', Icons.work),
                      _buildLocationButton('Others', Icons.more_horiz),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        showToast('Address is Saved',
                            context: context,
                            axis: Axis.horizontal,
                            alignment: Alignment.center,
                            position: StyledToastPosition.top);
                      },
                      child: Text('Save Address'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationButton(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.red),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
