// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class brandLogo extends StatelessWidget {
  const brandLogo({
    super.key,
    required this.brandName,
    required this.imagePath, // Tambahkan parameter untuk jalur gambar
  });

  final String brandName;
  final String imagePath; // Path gambar

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Image.asset(
          imagePath, // Path ke gambar
          height: 100,
          width: 100,
        ),
        SizedBox(height: 8),
       
      ],
    );
  }
}
