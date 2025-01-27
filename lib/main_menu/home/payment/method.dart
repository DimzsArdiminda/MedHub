// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dfreindsapp/components/PaymentMethod.dart';
import 'package:dfreindsapp/components/addres.dart';
import 'package:dfreindsapp/main_menu/home/payment/succes.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cart items info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '2 Items in your cart',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    'TOTAL',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rp 185.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              // Delivery Address section
              const Text(
                'Delivery Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const AddressItem(
                title: 'Home',
                phone: '(031) 555-024',
                address: 'Jl. Rajawali No. 02, Surabaya',
                isSelected: true,
              ),
              const SizedBox(height: 8),
              const AddressItem(
                title: 'Office',
                phone: '(031) 555-024',
                address: 'Jl. Gajah Mada No. 05, Sidoarjo',
                isSelected: false,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      // Add address action
                    },
                    icon: const Icon(Icons.add, color: Color(0xFF00A59B)),
                    label: const Text(
                      'Add Address',
                      style: TextStyle(color: Color(0xFF00A59B)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Payment method section
              const Text(
                'Payment method',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  // color: const Color(0xFFF1FFEA),
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const PaymentMethodItem(
                iconUrl: 'asset/brand/ovo 1.png',
                title: 'OVO',
                isSelected: true,
              ),
              const PaymentMethodItem(
                iconUrl: 'asset/brand/dana 1.png',
                title: 'Dana',
                isSelected: false,
              ),
              const PaymentMethodItem(
                iconUrl: 'asset/brand/shopeepay 1.png',
                title: 'ShopeePay',
                isSelected: false,
              ),
              const PaymentMethodItem(
                iconUrl: 'asset/brand/GoPay 1.png',
                title: 'GoPay',
                isSelected: false,
              ),
              const SizedBox(height: 16),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Pay Now button
              ElevatedButton(
                onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Succes())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F3759),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text(
                  'Pay Now Rp 185.000',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
