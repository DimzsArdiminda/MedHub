import 'package:flutter/material.dart';

class couponApplied extends StatelessWidget {
  const couponApplied({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const Icon(Icons.local_offer_outlined),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              '1 Coupon applied',
              style: TextStyle(color: Color(0xFF00A59B), fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.highlight_remove_rounded, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
