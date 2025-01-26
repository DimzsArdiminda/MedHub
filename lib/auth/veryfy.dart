// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:dfreindsapp/auth/register.dart';
import 'package:dfreindsapp/auth/succes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Untuk inputFormatters

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _codeController = TextEditingController();

  void _submit() {
    String code = _codeController.text.replaceAll(" ", ""); // Hapus spasi
    if (code.length == 4) {
      // Proses kode verifikasi
      print("Verification Code: $code");
    } else {
      // Tampilkan pesan error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter a valid 4-digit code")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul
            Text(
              "Enter the verify code",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We just sent you a verification code via phone \n+62 821 39 488 953",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 30),
            // Form Input Kode Verifikasi
            Form(
              key: _formKey,
              child: TextField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 7, // 4 angka + 3 spasi
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly, // Hanya angka
                  _CodeInputFormatter(), // Formatter khusus
                ],
                decoration: InputDecoration(
                  hintText: "0 0 0 0",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A59B), width: 2),
                  ),
                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  counterText: "", // Hilangkan penghitung karakter
                  border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                style: TextStyle(
                  letterSpacing: 8, // Tambahkan jarak antar karakter
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                // maxLength: 4, // Batasi input hanya 4 karakter
                buildCounter: (BuildContext context, {int? currentLength, int? maxLength, bool? isFocused}) {
                  return Container(
                  width: 0,
                  height: 0,
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            // Tombol Submit
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Succes(),
                      ),
                    ),
                    // onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0F3759),
                      padding: EdgeInsets.all(15),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text("SUBMIT CODE"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Timer dan Tombol Resend Code
            Center(
              child: Text(
                "The verification code will expire in 00:59",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                ),
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: Color(0xFF00A59B), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Formatter untuk Input Kode Verifikasi
class _CodeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Hapus spasi pada input baru
    String digitsOnly = newValue.text.replaceAll(" ", "");

    // Batas maksimum 4 angka
    if (digitsOnly.length > 4) {
      digitsOnly = digitsOnly.substring(0, 4);
    }

    // Sisipkan spasi di antara karakter (misalnya: "1 2 3 4")
    String formatted = digitsOnly.replaceAllMapped(
      RegExp(r".{1}"), // Pasangkan setiap karakter
      (match) => "${match.group(0)} ",
    );

    return TextEditingValue(
      text: formatted.trim(), // Hapus spasi di akhir
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
