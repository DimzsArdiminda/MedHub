import 'package:flutter/material.dart';
class PaymentMethodItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isSelected;

  const PaymentMethodItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(iconUrl, width: 24, height: 24),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: Icon(
        isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
        color: isSelected ? const Color(0xFF00A59B) : Colors.grey,
      ),
      onTap: () {
        // Select payment method action
      },
    );
  }
}
