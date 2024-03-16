import 'package:flutter/material.dart';
import 'LoginPage.dart';  // ตรวจสอบให้แน่ใจว่าคุณได้สร้างหน้านี้และนำเข้ามา

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Place your image here
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Let's enjoy on POP Mart Shop",
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: Text("Let's Start"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Button color
                onPrimary: Colors.white, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
