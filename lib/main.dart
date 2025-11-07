import 'package:flutter/material.dart';
import 'splash_screen/splash_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String nim = '1123150112'; // Tetap tampil di UI untuk verifikasi warna

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Julian Arwansah',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange), // Warna dari digit terakhir NIM = 2
      ),
      debugShowCheckedModeBanner: false,
      home: const JulSplashScreen(),
    );
  }
}
