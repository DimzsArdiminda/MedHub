// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:dfreindsapp/main_menu/home/payment/cart.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: <Widget>[
              Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Image.asset(
              'asset/logos/icon1.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
            },
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 15, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Sugar Free Gold Low Calories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text("Etiam mollis metus non purus"),
              SizedBox(height: 20),

              // Banner
              Center(
                child: Image.asset('asset/img/banner2.png'),
              ),

              // Harga
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp 150.000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Etiam mollis"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_box_outlined, color: Color(0xFF00A59B)),
                      SizedBox(width: 10),
                      Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Color(0xFF00A59B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Package Size
              SizedBox(height: 20),
              Text(
                "Package Size",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 3; i++) // Dynamic list for repetition
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rp 252.000"),
                          Text("500 pellets"),
                        ],
                      ),
                    ),
                ],
              ),

              // Rating and Reviews
              SizedBox(height: 20),
              Text(
                "Rating and Reviews",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset("asset/img/ratting.png"),
              SizedBox(height: 20),

              // Komentar
              _buildReviewCard(
                "Lorem Hoffman",
                "05 August 2024",
                4.2,
                "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas",
              ),
              SizedBox(height: 20),
              // _buildReviewCard(
              //   "Jane Doe",
              //   "10 August 2024",
              //   5.0,
              //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet.",
              // ),

              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0F3759),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  minimumSize: Size(double.infinity, 50), // Tombol panjang
                ),
                child: Text(
                  "Go to Cart",
                  style: TextStyle(
                    color: Colors.white ,
                    fontSize: 18
                  ),
                ),
                        ),
                SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviewCard(
      String name, String date, double rating, String review) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.grey[300]!),
        // borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 4),
              Text(
                rating.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            review,
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }
}
