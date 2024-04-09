import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80, top: 160, bottom: 40),
          child: Image.asset('lib/images/avocado.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Fresh items everyday',
          style: TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple,
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
