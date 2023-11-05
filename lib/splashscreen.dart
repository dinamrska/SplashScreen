import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:myapp/Home.dart';

class SplashScreen extends StatelessWidget {
  final List<String> animationFiles = [
    'assets/dina.json',
    'assets/dina2.json',
    // ... tambahkan nama file JSON lainnya di sini
  ];

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ambil indeks file JSON yang akan digunakan (misalnya, indeks pertama untuk sekarang)
    int selectedAnimationIndex = 0;

    return AnimatedSplashScreen(
        splash: Lottie.asset(animationFiles[selectedAnimationIndex]),
        splashIconSize: 300,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        nextScreen: HomePage());
  }
}
