// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Succes extends StatefulWidget {
  const Succes({super.key});

  @override
  State<Succes> createState() => _SuccesState();
}

class _SuccesState extends State<Succes> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                'asset/login success/Group 3645.png',
                height: 200,
              ),
              SizedBox(height: 60),

              // Judul dan deskripsi
              Text(
                "Phone Number Verified",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Congratulations, your phone \nnumber has been verified. You can \nstart using the app now.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 50),

              // Tombol Continue
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman berikutnya
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0F3759),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  minimumSize: Size(double.infinity, 50), // Tombol panjang
                ),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: Colors.white ,
                    fontSize: 18
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
