// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  const DealCard({
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
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEF0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
                image: DecorationImage(
                image: AssetImage(imagePath), // Menampilkan gambar dari aset
                // fit: BoxFit.cover, // Memastikan gambar memenuhi kontainer
                ),
            ),
          ),
          // Bagian Teks dan Harga
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(title, style: TextStyle(fontSize: 14)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  price,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
                Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    // right: -2,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF00A59B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    ),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 14, color: Colors.white),
                    SizedBox(width: 4),
                    Text(
                    rating.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                  ),
                ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
