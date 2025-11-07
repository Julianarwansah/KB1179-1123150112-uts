import 'package:flutter/material.dart';

class JulSplashScreen3 extends StatelessWidget {
  const JulSplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            height: 240,
            width: 240,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.primaryContainer,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: 0.3),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/gambar3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 40),

          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),

          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Get Started clicked!")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDot(colorScheme.primary.withValues(alpha: 0.3)),
              const SizedBox(width: 10),
              _buildDot(colorScheme.primary.withValues(alpha: 0.3)),
              const SizedBox(width: 10),
              _buildDot(colorScheme.primary),
            ],
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              "Julian Arwansah | NIM: 1123150112",
              style: TextStyle(
                fontSize: 12,
                color: colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(Color color) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
