import 'package:flutter/material.dart';
import 'package:lesson_54/utils/styles.dart';

import '../widgets/custom_drawer.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

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
                      if (_formKey.currentState?.validate() ?? false) {

                      }
                    },
                    child: Text(
                      "Login",
                      style: AppTextStyles.HeadLinebWhite,
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
