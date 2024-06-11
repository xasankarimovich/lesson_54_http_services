import 'package:flutter/material.dart';
import 'package:lesson_54/utils/styles.dart';
import 'package:lesson_54/views/screens/login_screeens/register_screen.dart';

import '../../widgets/custom_drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      //   Todo login//
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://img.freepik.com/free-vector/abstract-digital-grid-vector-black-background_53876-111550.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tizimga Kirish",
                      style: AppTextStyles.HeadLineblack.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: Text(
                          "email pochta",
                          style: AppTextStyles.Paragraphblack.copyWith(color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.mail_outline, color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email pochta kiritilishi shart';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        label: Text(
                          "password",
                          style: AppTextStyles.Paragraphblack.copyWith(color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.key, color: Colors.white),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Parol kiritilishi shart';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Login logic here
                          }
                        },
                        child: Text(
                          "Login",
                          style: AppTextStyles.HeadLinebWhite,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Ro'yxatdan O'tish",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
