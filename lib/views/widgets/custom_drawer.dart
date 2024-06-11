import 'package:flutter/material.dart';
import '../screens/automat_logout.dart';
import '../screens/courses/course_list_screen.dart';
import '../screens/login_screeens/login_screen.dart';
import '../screens/login_screeens/password_reset_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  ThemeMode _themeMode = ThemeMode.light;

  void _navigateTo(Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () => _navigateTo(const HomeScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("Courses"),
            onTap: () => _navigateTo(const CoursesScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.lock_reset),
            title: const Text("Password Reset"),
            onTap: () => _navigateTo(const PasswordResetScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text("Login"),
            onTap: () => _navigateTo(const LoginScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  value: _themeMode == ThemeMode.dark,
                  onChanged: (bool value) {
                    setState(() {
                      _themeMode = value ? ThemeMode.dark : ThemeMode.light;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
