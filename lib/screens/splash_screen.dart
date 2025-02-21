import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pmsn2025/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen(
        useImmersiveMode: true,
        duration: const Duration(milliseconds: 4000),
        nextScreen: const LoginScreen(),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        splashScreenBody: Center(
          child: Lottie.asset(
            "assets/animation_tecnm.json",
          ),
        ),
      ),
    );
  }
}
