import 'package:flutter/material.dart';
import 'package:lesson_54/utils/styles.dart';
import 'package:lesson_54/views/screens/register_screen.dart';

import '../widgets/custom_drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onSubmit(){
    if (_formKey.currentState?.validate() ?? false) {
    //   Todo login//

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tizimga Kirish",
                  style: AppTextStyles.HeadLineblack,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text(
                      "email pochta",
                      style: AppTextStyles.Paragraphblack,
                    ),
                    prefixIcon: Icon(Icons.mail_outline),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email pochta kiritilishi shart';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text(
                      "password",
                      style: AppTextStyles.Paragraphblack,
                    ),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Parol kiritilishi shart';
                    }
                    return null;
                  },
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
                      if (_formKey.currentState?.validate() ?? false) {}
                    },
                    child: Text(
                      "Login",
                      style: AppTextStyles.HeadLinebWhite,
                    ),
                  ),
                ),
                20.height(),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) {
                          return RegisterScreen();
                        },),);

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
    );
  }
}
