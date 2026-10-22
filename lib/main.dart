import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const TechEventApp());
}

class TechEventApp extends StatelessWidget {
  const TechEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechEvent Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
