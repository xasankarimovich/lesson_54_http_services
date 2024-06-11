import 'package:flutter/material.dart';
import 'package:lesson_54/views/screens/home_screen.dart';
import 'package:lesson_54/views/screens/register.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  void onSubmit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) {
          return Register();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          ListTile(
            onTap: onSubmit,
            leading: Icon(Icons.home),
            title: Text(
              "Asosiy Sahifa",
            ),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ],
      ),
    );
  }
}
