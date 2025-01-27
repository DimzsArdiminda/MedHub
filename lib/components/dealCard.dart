// ignore_for_file: prefer_const_constructors

import 'package:dfreindsapp/main_menu/home/review.dart';
import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  const DealCard({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
    required this.imagePath,
    this.disc, // Tambahkan parameter diskon
    this.color, // Tambahkan parameter warna
    this.link 
  });

  final String title;
  final String price;
  final double rating;
  final String imagePath;
  final String? disc; // Diskon bersifat opsional
  final String? link;
  final Color? color; // Warna bersifat opsional

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
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
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Gambar
                GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage())),
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
                    // fit: BoxFit.cover,
                  ),
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
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF00A59B),
                          borderRadius: BorderRadius.circular(25),
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
          // Label Diskon
          if (disc != null && color != null)
            Positioned(
              top: 0,
              left: 0,
              child: CustomPaint(
              painter: DiscountPainter(color!),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.center,
                height: 60,
                width: 60,
                child: Transform.rotate(
                angle: -0.785, // Rotasi 45 derajat
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30), // Geser sedikit ke atas
                  child: Text(
                  disc!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                ),
              ),
              ),
            ),
        ],
      ),
    );
  }
}

class DiscountPainter extends CustomPainter {
  final Color color;

  DiscountPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

