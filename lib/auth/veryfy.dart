import 'package:dfreindsapp/auth/register.dart';
import 'package:dfreindsapp/auth/succes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  void _submit() {
    String code = _controllers.map((e) => e.text).join();
    if (code.length == 4) {
      print("Verification Code: $code");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Succes()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid 4-digit code")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul
            const Text(
              "Enter the verify code",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "We just sent you a verification code via phone \n+62 821 39 488 953",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Input OTP dengan placeholder
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: "0", // Placeholder (default angka 0)
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400, // Warna placeholder
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A59B), width: 2),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),
            // Tombol Submit
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F3759),
                      padding: const EdgeInsets.all(15),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text("SUBMIT CODE"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Timer dan Tombol Resend Code
            const Center(
              child: Text(
                "The verification code will expire in 00:59",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                ),
                child: const Text(
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
