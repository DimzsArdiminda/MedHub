// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dfreindsapp/auth/loginPage.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "asset/Onboard 1/Group 1207.png",
      "title": "View and buy \nMedicine online",
      "description":
          "Etiam mollis metus non purus \nfaucibus sollicitudin. Pellentesque \nsagittis mi. Integer.",
    },
    {
      "image": "asset/Onboard 2/Group 1208.png",
      "title": "Online medical & \n Healthcare",
      "description":
          "Etiam mollis metus non purus \n faucibus sollicitudin. Pellentesque \n sagittis mi. Integer.",
    },
    {
      "image": "asset/Onboard 2/Mask Group.png",
      "title": "MedHub",
      "description":
          "Do you want some help with your \n health to get better life?",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        _onboardingData[index]["image"]!,
                        width: 300,
                      ),
                      SizedBox(height: 20),
                      // Menambahkan background orange pada judul di halaman terakhir
                      index == _onboardingData.length - 1
                          ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Welcome to ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    _onboardingData[index]["title"]!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          )
                          : Text(
                              _onboardingData[index]["title"]!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      SizedBox(height: 20),
                      Text(
                        _onboardingData[index]["description"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      if (index == _onboardingData.length - 1)
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0F3759),
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                                child: Text("SIGN UP WITH EMAIL",
                                  style: TextStyle(color: Colors.white)
                                ),
                              ),
                              SizedBox(height: 10),
                                ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(color: Colors.grey),
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "asset/login/facbook logo.png",
                                        width: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Text("CONTINUE WITH FACEBOOK",
                                        style: TextStyle(color: Colors.black)
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(color: Colors.grey),
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        "asset/login/google.png",
                                        width: 35,
                                      ),
                                    SizedBox(width: 15,),
                                    Text("CONTINUE WITH GMAIL",
                                        style: TextStyle(color: Colors.black)
                                      ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("LOGIN",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Skip
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                // Indikator Halaman (Dots)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => buildDot(index),
                  ),
                ),
                // Tombol Next
                TextButton(
                  onPressed: () {
                    if (_currentIndex == _onboardingData.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    _currentIndex == _onboardingData.length - 1
                        ? "Finish"
                        : "Next",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 10,
      width: _currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
