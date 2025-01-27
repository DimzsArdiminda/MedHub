// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dfreindsapp/components/dealCard.dart';
import 'package:dfreindsapp/components/show.dart';
import 'package:flutter/material.dart';

class Diabetes extends StatefulWidget {
  const Diabetes({super.key});

  @override
  State<Diabetes> createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Diabetes Care",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              // banner
              // SizedBox(height: -3,),
              Center(
                child: Container(
                  child: Image.asset(
                    'asset/img/banner.png'
                  
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Diabetes Diet", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        DealCard2(
                          imagePath: "asset/obat/obat1.png",
                            title: "Sugar \nSubstitute",
                            price: "Rp 150.000",
                            rating: 4.5),
                        DealCard2(
                          imagePath: "asset/obat/obat2.png",
                            title: "Juices & \nVinegars",
                            price: "Rp 150.000",
                            rating: 4.5),
                        DealCard2(
                          imagePath: "asset/obat/obat3.png",
                            title: "Vitamins \nMedicines",
                            price: "Rp 150.000",
                            rating: 4.5),
                        SizedBox(width: 16),
                      ],
                    ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("All Product", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                ],
              ),
              SizedBox(height: 10,),
                GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: 7, // Sesuaikan jumlah item sesuai kebutuhan
                itemBuilder: (context, index) {
                  // Data contoh untuk setiap item
                  final List<Map<String, dynamic>> deals = [
                    {
                      "imagePath": "asset/img/image 20.png",
                      "title": "Accu-check Active \nTest Strip",
                      "price": "Rp 112.000",
                      "disc": "SALE",
                      "color" : Colors.red,
                      "rating": 4.2,
                    },
                    {
                      "imagePath": "asset/img/image 21.png",
                      "title": "Omron HEM-8712 \nBP Monitor",
                      "price": "Rp 150.000",
                      "disc" : "15% off",
                      "color" : Colors.amber,
                      "rating": 4.2,
                    },
                    {
                      "imagePath": "asset/obat/obat5.png",
                      "title": "Accu-check Active \nTest Strip",
                      "price": "Rp 112.000",
                      "rating": 4.2,
                    },
                    {
                      "imagePath": "asset/obat/obat5.png",
                      "title": "Omron HEM-8712 \nBP Monitor",
                      "price": "Rp 150.000",
                      "rating": 4.2,
                    },
                    // Tambahkan lebih banyak data jika diperlukan
                  ];

                  // Pastikan index tidak melebihi panjang list deals
                  if (index < deals.length) {
                    final deal = deals[index];
                    return DealCard(
                      imagePath: deal["imagePath"],
                      title: deal["title"],
                      price: deal["price"],
                      disc: deal["disc"],
                      link: deal["link"],
                      color: deal["color"],
                      rating: deal["rating"],
                    );

                    
                  } else {
                    // Placeholder jika index lebih besar dari panjang deals
                    // return SizedBox();
                  }
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}