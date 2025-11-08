import 'package:flutter/material.dart';
import 'package:uts_julian_arwansah_1123150112/splash_screen/splash_screen2.dart';

class JulSplashScreen extends StatelessWidget {
  const JulSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange.withAlpha(76),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/images/gambar1.jpg"),
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
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Selamat datang di splash screen 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(179),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JulSplashScreen2(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(Colors.deepOrange),
                const SizedBox(width: 10),
                _buildDot(Colors.deepOrange.withAlpha(76)),
                const SizedBox(width: 10),
                _buildDot(Colors.deepOrange.withAlpha(76)),
              ],
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Julian Arwansah | NIM: 1123150112",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurface.withAlpha(179),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(Color color) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}