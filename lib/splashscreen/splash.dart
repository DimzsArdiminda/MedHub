// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dfreindsapp/auth/loginPage.dart';
import 'package:dfreindsapp/main_menu/menu.dart';
import 'package:dfreindsapp/onBoarding/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => OnBoarding()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/splash/Mask Group.png',
              fit: BoxFit.cover, 
            ),
          ),
          // Konten di atas background
            Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 1.5, end: 1.0),
                duration: Duration(seconds: 3),
                builder: (context, double scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: child,
                );
                },
                child: Image.asset(
                'asset/splash/logo-splashscreen.png',
                height: 200,
                ),
              ),
              ],
            ),
            ),
        ],
      ),
    );
  }
}
