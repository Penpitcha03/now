import 'package:flutter/material.dart';
import 'package:project/productPage.dart';
import 'RegisterPage.dart'; // ตรวจสอบให้แน่ใจว่าไฟล์นี้มีชื่อ RegisterPage



class LoginPage extends StatelessWidget {
  // สร้างตัวควบคุมสำหรับฟิลด์ข้อความ
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
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 48),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Username or Email',
                  fillColor: Color(0xFFF3E3E3),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Color(0xFFF3E3E3),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  // เพิ่มโลจิกการตรวจสอบเมื่อกดปุ่ม Login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
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
                  // นำทางไปยังหน้าลงทะเบียน
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  'OR Register',
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
