import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String nim = '1123150112';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Julian Arwansah',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Inisialisasi Aplikasi Tema Flutter...'),
        ),
      ),
    );
  }
}