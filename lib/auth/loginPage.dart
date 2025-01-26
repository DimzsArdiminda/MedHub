// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? email, password;
  bool showPassword = false;

  void _togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // print("Email: $email, Password: $password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            // border: OutlineInputBorder(),
                          ),
                          onSaved: (value) => email = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            } else if (!value.contains('@')) {
                              return "Please enter a valid email";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: !showPassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                            // border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: _togglePasswordVisibility,
                            ),
                          ),
                          onSaved: (value) => password = value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            // } else if (value.length < 6) {
                            //   return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: _submit,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF6610f2),
                                padding: EdgeInsets.all(15),
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              child: Text("Login"),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: _submit,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF6610f2),
                                padding: EdgeInsets.all( 15),
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              child: Text("Register"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
