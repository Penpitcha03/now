import 'package:flutter/material.dart';
import 'LoginPage.dart'; // ตรวจสอบให้แน่ใจว่าได้นำเข้าหน้า LoginPage

class RegisterPage extends StatelessWidget {
  // สร้างตัวควบคุมสำหรับแต่ละฟิลด์ข้อความ
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 48),
              TextField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xFFF3E3E3),
                  filled: true,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xFFF3E3E3),
                  filled: true,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xFFF3E3E3),
                  filled: true,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text('Sign up'),
                onPressed: () {
                  // ที่นี่คุณสามารถเพิ่มการตรวจสอบและบันทึกข้อมูลผู้ใช้
                  // จากนั้นนำทางไปหน้าล็อกอิน
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to login page
                },
                child: Text(
                  'Already have an account? Sign in',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
