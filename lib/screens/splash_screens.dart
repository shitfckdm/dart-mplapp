import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;

  @override
  void initState() {
    super.initState();

    // Fade-in 0.8 detik
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.forward(); // fade-in
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/images/bg.jpg'), context);
  }

  void goToHome() async {
    // Fade-out 1 detik sesuai keinginan
    _controller.reverseDuration = const Duration(milliseconds: 1000);

    await _controller.reverse();  // jalankan fade-out

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.3)),

          Center(
            child: FadeTransition(
              opacity: _fade,
              child: Lottie.asset(
                'assets/lottie/loading.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,

                onLoaded: (composition) {
                  // Durasi asli animasi Lottie
                  final lottieDuration = composition.duration;

                  // Setelah animasi selesai → fade-out → masuk home
                  Future.delayed(lottieDuration, () {
                    goToHome();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
