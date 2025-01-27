// ignore_for_file: use_super_parameters, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dfreindsapp/components/kupon.dart';
import 'package:dfreindsapp/main_menu/home/payment/method.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '2 Items in your cart',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Text(
                  '+ Add more',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  cartItem(
                    context,
                    imageAsset: 'asset/obat/obat2.png',
                    title: 'Sugar free gold',
                    subtitle: 'bottle of 500 pellets',
                    price: 'Rp 25.000',
                  ),
                  const Divider(color: Color.fromARGB(13, 0, 0, 0)),
                  const SizedBox(height: 16),
                  
                  cartItem(
                    context,
                    imageAsset: 'asset/obat/obat3.png',
                    title: 'Sugar free gold',
                    subtitle: 'bottle of 500 pellets',
                    price: 'Rp 18.000',
                  ),
                    const Divider(color: Color.fromARGB(13, 0, 0, 0)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            couponApplied(),
            const SizedBox(height: 16),
            paymentSummary(),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0F3759),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () => Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const CheckoutPage())),
              child: const Text(
                'Place Order @ Rp 185.000',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItem(BuildContext context,
    {required String title,
    required String subtitle,
    required String price,
    required String imageAsset}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Gambar item
      Column(
        children: [
          Container(
            width: 64,
            height: 64,
            color: Colors.grey[300],
            child: Image.asset(imageAsset, width: 64, height: 64, fit: BoxFit.cover),
          ),
        ],
      ),
      const SizedBox(width: 16),
      // Informasi item
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      const Spacer(),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Tombol delete
          IconButton(
        onPressed: () {
          // Aksi untuk delete item
        },
        icon: const Icon(Icons.highlight_remove_rounded, color: Colors.grey),
          ),
          Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF1FFEA),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
          onPressed: () {
            // Aksi untuk mengurangi jumlah item
          },
          icon: const Icon(Icons.remove_circle, color: Color(0xFF00A59B)),
            ),
            Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child: const Text(
            '1',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
            ),
            IconButton(
          onPressed: () {
            // Aksi untuk menambah jumlah item
          },
          icon: const Icon(
              Icons.add_circle_outlined,
              color: Color(0xFF0F3759),
              size: 24),
            ),
          ],
        ),
          ),
        ],
      ),
    ],
  );
}

  Widget paymentSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Summary',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        summaryRow('Order Total', 'Rp 228.800'),
        summaryRow('Items Discount', '- Rp 28.800'),
        summaryRow('Coupon Discount', '- Rp 15.800'),
        summaryRow('Shipping', 'Free'),
        const Divider(color: Color.fromARGB(13, 0, 0, 0)),
        summaryRow('Total', 'Rp 185.000', isBold: true),
      ],
    );
  }

  Widget summaryRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

