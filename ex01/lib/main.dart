import 'package:flutter/material.dart';
import 'package:flutter_application_2/inicial.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Inicial(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fontes 0_o',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 21, 255, 0)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}