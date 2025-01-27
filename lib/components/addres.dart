import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  final String title;
  final String phone;
  final String address;
  final bool isSelected;

  const AddressItem({
    super.key,
    required this.title,
    required this.phone,
    required this.address,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? const Color(0xFF00A59B) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: isSelected ? const Color(0xFF00A59B) : Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(phone, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 4),
                Text(address, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.grey),
            onPressed: () {
              // Edit address action
            },
          ),
        ],
      ),
    );
  }
}
