import 'package:flutter/material.dart';
import 'package:lesson_54/views/screens/login_screeens/login_screen.dart';
import 'package:lottie/lottie.dart';
import '../../utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF56B8FF),
      body: Column(
        //
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 12,
            child: Center(
                child: Lottie.asset("assets/lottie/animation.json")
            ),
          ),
          const Expanded(
            flex: 2,
            child: Column(
              children: [
                Text("SWIFT", style: AppTextStyles.HeadLinebWhite),
                Text(
                  "Gratis transfer antar bank",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
