import 'package:flutter/material.dart';
import 'package:lesson_54/views/screens/courses/course_list_screen.dart';
import 'views/screens/home_screen.dart';
import 'views/screens/login_screeens/login_screen.dart';
import 'views/screens/login_screeens/register_screen.dart';
import 'views/screens/login_screeens/password_reset_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/courses': (context) => const CoursesScreen(),
        '/password-reset': (context) => const PasswordResetScreen(),
      },
    );
  }
}
