import 'package:flutter/material.dart';
import 'loginpage.dart';

class FirstAnimation extends StatefulWidget {
  const FirstAnimation({super.key});

  @override
  State<FirstAnimation> createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/project2/animation.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: height,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.black54),
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/project2/playbutton.png',
                    height: height * 0.12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Cine',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Verse',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Unlimited movies, TV\n     shows and more',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
