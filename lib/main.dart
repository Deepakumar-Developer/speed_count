import 'package:flutter/material.dart';
import 'package:speed_count/screens/hero_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo.shade900),
          useMaterial3: true,
        ),
        home: const Hero_page());
  }
}
