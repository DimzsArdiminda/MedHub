// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon; // Path ke gambar aset
  final String title; // Judul kategori

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              icon, // Path ke gambar
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
