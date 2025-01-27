// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:dfreindsapp/components/CategoryIcon.dart';
import 'package:dfreindsapp/components/brandlogo.dart';
import 'package:dfreindsapp/components/dealCard.dart';
import 'package:flutter/material.dart';

class MedHubHome extends StatelessWidget {
  const MedHubHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            SingleChildScrollView(
              child: Stack(
                children: [
                   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF00AAF5), Color(0xFF1B75BC)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // User Profile and Icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "asset/img/wajah.png",
                                  width: 60,
                                )
                              ],
                            ),
                            Row(
                              children: [
                               Stack(
                                  children: <Widget>[
                                  Icon(Icons.notifications_outlined,
                                  color: Colors.white,
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
                                  icon: Icon(Icons.shopping_bag_outlined),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Text with Overlapping Circle
                        Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            // Circle
                            Positioned(
                              top: -60,
                              // bottom: 60,
                              left: -150,
                              child: Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Lorem",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Welcome to MedHub",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  // Top Categories
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Top Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                      IconButton(
                        icon: Image.asset("asset/logos/icons2.png"), // Path to image
                        iconSize: 50,
                        onPressed: () {
                        // Add your onPressed code here!
                        },
                      ),
                      SizedBox(width: 16,),
                      IconButton(
                        icon: Image.asset("asset/logos/logo6.png"), // Path to image
                        iconSize: 50,
                        onPressed: () {
                        // Add your onPressed code here!
                        },
                      ),
                      SizedBox(width: 16,),
                      IconButton(
                        icon: Image.asset("asset/logos/logo4.png"), // Path to image
                        iconSize: 50,
                        onPressed: () {
                        // Add your onPressed code here!
                        },
                      ),
                      SizedBox(width: 16,),
                      IconButton(
                        icon: Image.asset("asset/logos/logo5.png"), // Path to image
                        iconSize: 50,
                        onPressed: () {
                        // Add your onPressed code here!
                        },
                      ),
                      SizedBox(width: 16,),
                      IconButton(
                        icon: Image.asset("asset/logos/logo3.png"), // Path to image
                        iconSize: 50,
                        onPressed: () {
                        // Add your onPressed code here!
                        },
                      ),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'asset/img/banner.png'
                      
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Deals of the Day
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deals of the Day",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("More"),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        DealCard(
                          imagePath: "asset/obat/image.png",
                            title: "Tablet Bottle Mockup",
                            price: "Rp 150.000",
                            rating: 4.5),
                        DealCard(
                          imagePath: "asset/obat/image1.png",
                            title: "Tablet Bottle Mockup",
                            price: "Rp 150.000",
                            rating: 4.5),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Featured Brands
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Featured Brands",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // SizedBox(width: 16),
                        brandLogo(
                          imagePath: "asset/brand/brand2.png",
                          brandName: "Himalaya Wellness"),
                        brandLogo(
                          imagePath: "asset/brand/brand1.png",
                          brandName: "Accu-Chek"
                          ),
                        brandLogo(
                          imagePath: "asset/brand/brand3.png",
                          brandName: "VLCC"
                          ),
                        brandLogo(
                          imagePath: "asset/brand/brand.png",
                          brandName: "VLCC"
                          ),
                        // SizedBox(width: 16),
                      ],
                    ),
                  ),
                ],
              ),

              // tumpukan atas
               // Search Bar (Floating)
            Positioned(
              top: 150,
              left: 16,
              right: 16,
              child: Stack(
              children: [
                Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                  // BoxShadow(
                  //   color: Colors.white,
                  //   blurRadius: 8,
                  //   offset: Offset(0, 2),
                  // ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search Medicine & Healthcare products",
                  hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                ),
              ],
              ),
            ),

                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
