// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dfreindsapp/main_menu/home/payment/cart.dart';
import 'package:flutter/material.dart';

class DealCard2 extends StatelessWidget {
  const DealCard2({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
    required this.imagePath, // Tambahkan parameter untuk jalur gambar
  });

  final String title;
  final String price;
  final double rating;
  final String imagePath; // Path gambar

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( bottom: 8),
      margin: EdgeInsets.only(right: 16),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEEEEF0),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            // Bagian Gambar
            GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart()
              ),
            ),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
              color: Color(0xFFEEEEF0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath), // Menampilkan gambar dari aset
                fit: BoxFit.cover, // Memastikan gambar memenuhi kontainer
              ),
              ),
            ),
            ),
            // Bagian Teks dan Harga
            Padding(
            padding: EdgeInsets.all(8),
            child: Text(title, style: TextStyle(fontSize: 14)),
            ),
        ],
      ),
    );
  }
}
